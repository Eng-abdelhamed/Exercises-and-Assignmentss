import calc as ac  

while True:
        operand = input("Enter the Operation (add, sub, div, mult): ").lower()
        
        if operand not in ['add', 'sub', 'div', 'mult']:
            raise ValueError("Invalid operation. Please choose from 'add', 'sub', 'div', 'mult'.")
        
        number1 = int(input("Enter First Number: "))
        number2 = int(input("Enter Second Number: "))
        
        
        if operand == 'add':
            print(f"The Summation of {number1} + {number2} = {ac.add(number1, number2)}")
        elif operand == 'sub':
            print(f"The Subtraction of {number1} - {number2} = {ac.subtract(number1, number2)}")
        elif operand == 'div':
            print(f"The Division of {number1} / {number2} = {ac.Division(number1, number2)}")
        elif operand == 'mult': 
            print(f"The Multiplication of {number1} * {number2} = {ac.Multiply(number1, number2)}")
        
        flag =  input("You Want Another Operation ? (yes / no) :") .lower()    
        if flag == 'no':
            print(f"Ok thanks for using calc")
            break
             
       
       
