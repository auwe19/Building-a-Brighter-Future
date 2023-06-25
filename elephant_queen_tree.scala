// Primitive data type definitions
val booleanVar: Boolean = true
val byteVar: Byte = 127
val shortVar: Short = 277
val intVar: Int = 2147483647
val longVar: Long = 9223372036854775807
val floatVar: Float = 3.14159f
val doubleVar: Double = 2.71828

// String definitions
val stringVar: String = "Building a Brighter Future"

// Array definitions
val booleanArray: Array[Boolean] = Array(true, false, true)
val byteArray: Array[Byte] = Array(127, 0, -127)
val shortArray: Array[Short] = Array(10, 20, 30)
val intArray: Array[Int] = Array(1, 2, 3)
val longArray: Array[Long] = Array(1000, 2000, 3000)
val floatArray: Array[Float] = Array(2.0f, 4.0f, 8.0f)
val doubleArray: Array[Double] = Array(1.0, 2.0, 4.0)
val stringArray: Array[String] = Array("hello", "world", "!")

// List definitions
val booleanList: List[Boolean] = List(true, false, true)
val byteList: List[Byte] = List(127, 0, -127)
val shortList: List[Short] = List(10, 20, 30)
val intList: List[Int] = List(1, 2, 3)
val longList: List[Long] = List(1000, 2000, 3000)
val floatList: List[Float] = List(2.0f, 4.0f, 8.0f)
val doubleList: List[Double] = List(1.0, 2.0, 4.0)
val stringList: List[String] = List("hello", "world", "!")

// Map definitions
val booleanMap: Map[String, Boolean] = Map("bool1" -> true, "bool2" -> false, "bool3" -> true)
val byteMap: Map[String, Byte] = Map("byte1" -> 127, "byte2" -> 0, "byte3" -> -127)
val shortMap: Map[String, Short] = Map("short1" -> 10, "short2" -> 20, "short3" -> 30)
val intMap: Map[String, Int] = Map("int1" -> 1, "int2" -> 2, "int3" -> 3)
val longMap: Map[String, Long] = Map("long1" -> 1000, "long2" -> 2000, "long3" -> 3000)
val floatMap: Map[String, Float] = Map("float1" -> 2.0f, "float2" -> 4.0f, "float3" -> 8.0f)
val doubleMap: Map[String, Double] = Map("double1" -> 1.0, "double2" -> 2.0, "double3" -> 4.0)
val stringMap: Map[String, String] = Map("str1" -> "hello", "str2" -> "world", "str3" -> "!")

// Function definitions
def addIntegers(a: Int, b: Int): Int = {
	a + b
}

def subtractDoubles(a: Double, b: Double): Double = {
	a - b
}

def concatenateStrings(a: String, b: String): String = {
	a + b
}

// Object definitions
object Building {
	def aBrighterFuture() : String = {
		stringVar
	}
}

// Class definitions
class Person(val name: String, val age: Int) {
	def getName() : String = {
		name
	}

	def getAge() : Int = {
		age
	}
}

// Trait definitions
trait Greeter {
  def greet(name: String): Unit 
}

// Anonymous function definitions
val doubleFunction = (x: Double) => x + x
val stringFunction = (x: String) => x.toUpperCase()

// Implicit conversion definitions 
implicit def intToString(x: Int) : String = x.toString
implicit def stringToInt(x: String) : Int = x.toInt

// Pattern matching definitions
val x = "Building a Brighter Future"
x match {
  case "Building a Brighter Future" => println("Matching successful!")
  case _ => println("Matching unsuccessful.")
}

// Exceptions
try {
  val y: String = null
  y.toUpperCase()
} catch {
  case e: NullPointerException => println("Null pointer exception caught!")
  case _: Throwable => println("Some other exception caught!")
}

// Self types
trait A {
  self: B => 
  def doSomething() : Unit = {
    println("Doing something!")
  }
}

trait B