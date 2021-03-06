class Employee {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class HourlyEmployee: Employee {
    let hourlyWage: Double
    var hoursWorked: Double
    
    init(name: String, hourlyWage wage: Double, hoursWorked hours: Double) {
        self.hourlyWage = wage
        self.hoursWorked = hours
        super.init(name: name)
    }
    
    func payWages() -> Double {
        return hourlyWage * hoursWorked
    }
}

class SalariedEmployee: Employee {
    let salary: Double
    
    init(name: String, salary: Double) {
        self.salary = salary
        super.init(name: name)
    }
    
    func paySalary() -> Double {
        return salary
    }
}

let employees: [Employee] = [
    HourlyEmployee(name: "Elvis", hourlyWage: 299.99, hoursWorked: 100.00),
    SalariedEmployee(name: "Diana", salary: 120000.00),
    SalariedEmployee(name: "Taylor", salary: 80000000.00),
    HourlyEmployee(name: "Pasan", hourlyWage: 10.00, hoursWorked: 100.00),
    SalariedEmployee(name: "Tim", salary: 100000000.00),
    HourlyEmployee(name: "Ben", hourlyWage: 11.00, hoursWorked: 100.00)
]

for employee in employees {
    if employee is HourlyEmployee {
        if let hourlyEmployee = employee as? HourlyEmployee {
            let pay = hourlyEmployee.payWages()
            print(pay)
        }
    }
    if employee is SalariedEmployee {
        if let salariedEmployee = employee as? SalariedEmployee {
            let pay = salariedEmployee.paySalary()
            print(pay)
        }
    }
}
