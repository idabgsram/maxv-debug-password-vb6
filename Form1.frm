VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Max V USB Debug Password"
   ClientHeight    =   3135
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   3735
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3135
   ScaleWidth      =   3735
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   1920
      Top             =   2640
   End
   Begin VB.Frame Frame2 
      Caption         =   "Password"
      Height          =   855
      Left            =   120
      TabIndex        =   5
      Top             =   1800
      Width           =   3495
      Begin VB.TextBox pw 
         Height          =   285
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   6
         Top             =   360
         Width           =   3255
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "IMEI Information"
      Height          =   1575
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3495
      Begin VB.TextBox imei2 
         Height          =   285
         Left            =   120
         MaxLength       =   15
         TabIndex        =   4
         Top             =   1080
         Width           =   3255
      End
      Begin VB.TextBox imei1 
         Height          =   285
         Left            =   120
         MaxLength       =   15
         TabIndex        =   3
         Top             =   480
         Width           =   3255
      End
      Begin VB.Label Label2 
         Caption         =   "IMEI 2 :"
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   840
         Width           =   1215
      End
      Begin VB.Label Label1 
         Caption         =   "IMEI 1 :"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "(C) 2015 Idabgsram Tools"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   2760
      Width           =   3495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub imei1_KeyPress(KeyAscii As Integer)
  If Not (KeyAscii >= Asc("0") & Chr(13) _
     And KeyAscii <= Asc("9") & Chr(13) _
     Or KeyAscii = vbKeyBack _
     Or KeyAscii = vbKeyDelete _
     Or KeyAscii = vbKeySpace) Then
        Beep
        KeyAscii = 0
   End If
End Sub

Private Sub imei2_KeyPress(KeyAscii As Integer)
  If Not (KeyAscii >= Asc("0") & Chr(13) _
     And KeyAscii <= Asc("9") & Chr(13) _
     Or KeyAscii = vbKeyBack _
     Or KeyAscii = vbKeyDelete _
     Or KeyAscii = vbKeySpace) Then
        Beep
        KeyAscii = 0
   End If
End Sub

Private Sub Timer1_Timer()
On Error Resume Next
pw.Text = Mid(imei1, 4, 1) & Mid(imei2, 4, 1) & Mid(imei1, 7, 1) & Mid(imei2, 15, 1) & Mid(imei1, 4, 1) & Mid(imei1, 13, 1) & Mid(imei1, 8, 1) & Mid(imei1, 15, 1) & Mid(imei1, 15, 1) & Mid(imei1, 15, 1)
End Sub
