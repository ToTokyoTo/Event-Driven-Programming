Imports System.IO
Public Class Item
    Private Sub btnImport_Click(sender As Object, e As EventArgs) Handles btnImport.Click
        Dim openFileDialog As New OpenFileDialog()
        openFileDialog.Filter = "CSV Files (*.csv)|*.csv"
        openFileDialog.ShowDialog()

        ' If the user selected a file, read it into a DataTable and bind it to the DataGridView.
        If openFileDialog.FileName <> "" Then
            Dim dt As New DataTable()
            Dim fileReader As New StreamReader(openFileDialog.FileName)
            Dim line As String = fileReader.ReadLine()
            Dim columns As String() = line.Split(",")
            For Each column As String In columns
                dt.Columns.Add(column.Trim())
            Next
            While Not fileReader.EndOfStream
                line = fileReader.ReadLine()
                Dim fields As String() = line.Split(",")
                dt.Rows.Add(fields)
            End While
            fileReader.Close()
            DataGridView1.DataSource = dt
        End If
    End Sub

    Private Sub btnHome_Click(sender As Object, e As EventArgs) Handles btnHome.Click
        Me.Hide()
        Landing_Page.Show()
    End Sub
End Class