Imports System.Data.Common
Imports Excel = Microsoft.Office.Interop.Excel
Imports MySql.Data.MySqlClient
Public Class Sale
    Public sqlColumns As String = "saleID as ID, itemNumber as itemNum, customerID as customerID, customerName as name, saleDate as date, quantity as quantity, unitPrice as price"
    Private Sub Load_Data_to_Grid(ByVal strsql As String)
        Dim myreader As MySqlDataReader
        Dim mycommand As New MySqlCommand
        Dim mydataAdapter As New MySqlDataAdapter
        Dim mydatatable As New DataTable

        Connect_to_DB()
        With Me
            Try
                mycommand.Connection = myconn
                mycommand.CommandText = strsql
                myreader = mycommand.ExecuteReader
                mydatatable = New DataTable

                myreader.Close()
                mydataAdapter.SelectCommand = mycommand

                mydataAdapter.Fill(mydatatable)
                DataGrid.AutoSize = True
                .DataGrid.Refresh()
                .DataGrid.EndEdit()
                .DataGrid.DataSource = mydatatable
                .DataGrid.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.DisplayedCells

            Catch ex As MySqlException
                MsgBox(ex.Message, MsgBoxStyle.Critical, "Error on SQL query")
            End Try
            myreader = Nothing
            mycommand = Nothing
            Disconnect_to_DB()
        End With
    End Sub
    Private Sub reports_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Call Load_Data_to_Grid("select " & Me.sqlColumns & " from sale")
    End Sub
    Private Sub btnPrint_Click(sender As Object, e As EventArgs) Handles btnPrint.Click

        Call importToExcel(Me.DataGrid, "report.xlsx")
    End Sub

    Private Sub btnHome_Click(sender As Object, e As EventArgs) Handles btnHome.Click
        Me.Hide()
        Landing_Page.Show()
    End Sub
End Class