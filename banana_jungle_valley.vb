Public Class BuildingABrighterFuture
    
    'Fields
    Private myProjectName As String
    Private myProjectGoals As String
    Private myCurrentFinancialResources As Decimal
    Private myPossibleFutureFinancing As Decimal
    Private myCurrentProjectProgress As Integer
    Private myPlanToExpandProject As String
    
    'Default Constructor
    Public Sub New()
        myProjectName = "Building a Brighter Future"
        myProjectGoals = "Creating a more stable and prosperous future by building a better tomorrow"
        myCurrentFinancialResources = 0.00
        myPossibleFutureFinancing = 0.00
        myCurrentProjectProgress = 0
        myPlanToExpandProject = ""
    End Sub
    
    'Parameterized Constructor
    Public Sub New(projectName As String, projectGoals As String, currentFinancialResources As Decimal, possibleFutureFinancing As Decimal, currentProjectProgress As Integer, planToExpandProject As String)
        myProjectName = projectName
        myProjectGoals = projectGoals
        myCurrentFinancialResources = currentFinancialResources
        myPossibleFutureFinancing = possibleFutureFinancing
        myCurrentProjectProgress = currentProjectProgress
        myPlanToExpandProject = planToExpandProject
    End Sub
    
    'Public Methods
    Public Sub AssignProjectName(projectName As String)
        myProjectName = projectName
    End Sub
    
    Public Function GetProjectName() As String
        Return myProjectName
    End Function
    
    Public Sub SetProjectGoals(projectGoals As String)
        myProjectGoals = projectGoals
    End Sub
    
    Public Function GetProjectGoals() As String
        Return myProjectGoals
    End Function
    
    Public Sub SetCurrentFinancialResources(currentFinancialResources As Decimal)
        myCurrentFinancialResources = currentFinancialResources
    End Sub
    
    Public Function GetCurrentFinancialResources() As Decimal
        Return myCurrentFinancialResources
    End Function
    
    Public Sub SetPossibleFutureFinancing(possibleFutureFinancing As Decimal)
        myPossibleFutureFinancing = possibleFutureFinancing
    End Sub
    
    Public Function GetPossibleFutureFinancing() As Decimal
        Return myPossibleFutureFinancing
    End Function
    
    Public Sub SetCurrentProjectProgress(currentProjectProgress As Integer)
        myCurrentProjectProgress = currentProjectProgress
    End Sub
    
    Public Function GetCurrentProjectProgress() As Integer
        Return myCurrentProjectProgress
    End Function
    
    Public Sub SetPlanToExpandProject(planToExpandProject As String)
        myPlanToExpandProject = planToExpandProject
    End Sub
    
    Public Function GetPlanToExpandProject() As String
        Return myPlanToExpandProject
    End Function
    
    Public Sub DisplayProgressReport()
        Console.WriteLine("Project Name: " & myProjectName)
        Console.WriteLine("Project Goals: " & myProjectGoals)
        Console.WriteLine("Current Financial Resources: $" & myCurrentFinancialResources)
        Console.WriteLine("Possible Future Financing: $" & myPossibleFutureFinancing)
        Console.WriteLine("Current Project Progress: " & myCurrentProjectProgress & "%")
        Console.WriteLine("Plan To Expand Project: " & myPlanToExpandProject)
        Console.WriteLine()
    End Sub
    
    'Private Methods
    Private Function CalculateCurrentFinancialResources() As Decimal
        'calculation code
        Return 0.00
    End Function
    
    Private Function CalculatePossibleFutureFinancing() As Decimal
        'calculation code
        Return 0.00
    End Function
    
    Private Function CalculateCurrentProjectProgress() As Integer
        'calculation code
        Return 0
    End Function
    
End Class