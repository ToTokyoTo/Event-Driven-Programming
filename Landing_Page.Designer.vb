<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Landing_Page
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Landing_Page))
        Me.Label1 = New System.Windows.Forms.Label()
        Me.btnLogout = New System.Windows.Forms.Button()
        Me.btnItem = New System.Windows.Forms.Button()
        Me.btnCustomers = New System.Windows.Forms.Button()
        Me.btnSale = New System.Windows.Forms.Button()
        Me.btnBackup = New System.Windows.Forms.Button()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 19.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(249, 32)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(170, 38)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Welcome!"
        '
        'btnLogout
        '
        Me.btnLogout.Location = New System.Drawing.Point(478, 416)
        Me.btnLogout.Name = "btnLogout"
        Me.btnLogout.Size = New System.Drawing.Size(163, 51)
        Me.btnLogout.TabIndex = 7
        Me.btnLogout.Text = "Log out"
        Me.btnLogout.UseVisualStyleBackColor = True
        '
        'btnItem
        '
        Me.btnItem.Location = New System.Drawing.Point(478, 136)
        Me.btnItem.Name = "btnItem"
        Me.btnItem.Size = New System.Drawing.Size(163, 66)
        Me.btnItem.TabIndex = 8
        Me.btnItem.Text = "Items"
        Me.btnItem.UseVisualStyleBackColor = True
        '
        'btnCustomers
        '
        Me.btnCustomers.Location = New System.Drawing.Point(478, 276)
        Me.btnCustomers.Name = "btnCustomers"
        Me.btnCustomers.Size = New System.Drawing.Size(163, 66)
        Me.btnCustomers.TabIndex = 9
        Me.btnCustomers.Text = "Employees"
        Me.btnCustomers.UseVisualStyleBackColor = True
        '
        'btnSale
        '
        Me.btnSale.Location = New System.Drawing.Point(478, 208)
        Me.btnSale.Name = "btnSale"
        Me.btnSale.Size = New System.Drawing.Size(163, 62)
        Me.btnSale.TabIndex = 10
        Me.btnSale.Text = "View "
        Me.btnSale.UseVisualStyleBackColor = True
        '
        'btnBackup
        '
        Me.btnBackup.Location = New System.Drawing.Point(478, 348)
        Me.btnBackup.Name = "btnBackup"
        Me.btnBackup.Size = New System.Drawing.Size(163, 62)
        Me.btnBackup.TabIndex = 11
        Me.btnBackup.Text = "Back Up"
        Me.btnBackup.UseVisualStyleBackColor = True
        '
        'PictureBox1
        '
        Me.PictureBox1.Image = CType(resources.GetObject("PictureBox1.Image"), System.Drawing.Image)
        Me.PictureBox1.Location = New System.Drawing.Point(88, 177)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(250, 245)
        Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PictureBox1.TabIndex = 12
        Me.PictureBox1.TabStop = False
        '
        'Landing_Page
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(677, 585)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.btnBackup)
        Me.Controls.Add(Me.btnSale)
        Me.Controls.Add(Me.btnCustomers)
        Me.Controls.Add(Me.btnItem)
        Me.Controls.Add(Me.btnLogout)
        Me.Controls.Add(Me.Label1)
        Me.Name = "Landing_Page"
        Me.Text = "Landing_Page"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Label1 As Label
    Friend WithEvents btnLogout As Button
    Friend WithEvents btnItem As Button
    Friend WithEvents btnCustomers As Button
    Friend WithEvents btnSale As Button
    Friend WithEvents btnBackup As Button
    Friend WithEvents PictureBox1 As PictureBox
End Class
