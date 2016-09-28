students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]

def best_students(students)
  best_students = []
  x, y        = 0, 0
   #controla que el numero actual de estudiantes corresponda con el numero datos en el arreglo 
   while y < students.length
    current_student  = students[y][x]
  #toma el elemento con el indice 1 del arreglo y lo compara con la maxima calificacion 
  #si cumple la condicion lo envia al arreglo best_students
    if current_student[1] == 10
      best_students.push(current_student[0])
    end
  # lleva un control de cuantos estudiantes han sido best_students
    if x == (students[y].length - 1)
      x = 0
      y += 1
    else
      x += 1
    end
  end
  best_students
end 

p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]
