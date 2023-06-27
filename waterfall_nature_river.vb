Public Class BrighterFuture

Dim _positiveThinking As Boolean

'Constructor
Public Sub New()
    _positiveThinking = True
End Sub

'Method to apply positive thinking
Public Function ApplyPositiveThinking() As Boolean
    If (_positiveThinking) Then
        Return True
    Else
        Return False
    End If
End Function

'Method to generate positive thoughts
Public Sub GeneratePositiveThoughts()
    For i As Integer = 0 To 20
        Dim randomNumber As Integer = CInt(Math.Floor(20 * Rnd()))
        Select Case randomNumber
            Case 0
                Console.WriteLine("You can do anything if you put your mind to it!")
            Case 1
                Console.WriteLine("No challenge is too big. Take it one step at a time.")
            Case 2
                Console.WriteLine("Nothing is impossible; the word itself says 'I'm possible'!")
            Case 3
                Console.WriteLine("Always remember, you are stronger than you think.")
            Case 4
                Console.WriteLine("Believe in yourself and you will be unstoppable!")
            Case 5
                Console.WriteLine("Today is the day to be your best self.")
            Case 6
                Console.WriteLine("Life is an adventure; make it an exciting one!")
            Case 7
                Console.WriteLine("Make a difference in someone's life today.")
            Case 8
                Console.WriteLine("You always have choices; choose wisely.")
            Case 9
                Console.WriteLine("Focus on the good, not the bad.")
            Case 10
                Console.WriteLine("With hard work and dedication, you can achieve your dreams.")
            Case 11
                Console.WriteLine("It's never too late to make a fresh start.")
            Case 12
                Console.WriteLine("Always see the beauty in everything.")
            Case 13
                Console.WriteLine("Live life for the moment; every moment counts.")
            Case 14
                Console.WriteLine("Forgive and forget; you'll be a better person for it.")
            Case 15
                Console.WriteLine("No one can bring you down unless you let them.")
            Case 16
                Console.WriteLine("Turn a negative situation into a positive one.")
            Case 17
                Console.WriteLine("Don't be afraid to take risks; great rewards come from it!")
            Case 18
                Console.WriteLine("You can do anything if you work for it.")
            Case 19
                Console.WriteLine("Be passionate and persistent; you'll get where you want to be.")
            Case 20
                Console.WriteLine("Every day is a new opportunity to make something great.")
            Case Else
                Console.WriteLine("No positive thoughts found!")
        End Select
    Next
End Sub

End Class