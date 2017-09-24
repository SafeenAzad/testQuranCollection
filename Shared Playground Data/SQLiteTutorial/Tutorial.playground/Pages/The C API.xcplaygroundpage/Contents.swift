import SQLite
import XCPlayground
import Foundation
import Tutorial_Sources

destroyPart1Database()

func openDatabase() -> COpaquePointer {
    var db: COpaquePointer = nil
    if sqlite3_open(part1DbPath, &db) == SQLITE_OK {
        print("Successfully opened connection to database at \(part1DbPath)")
        return db
    } else {
        print("Unable to open database. Verify that you created the directory described " +
            "in the Getting Started section.")
        XCPlaygroundPage.currentPage.finishExecution()
    }
}

let db = openDatabase()
//: ## Create a Table
let createTableString = "CREATE TABLE Contact(" +
    "Id INT PRIMARY KEY NOT NULL," +
"Name CHAR(255));"



func createTable() {
    // 1
    var createTableStatement: COpaquePointer = nil
    // 2
    if sqlite3_prepare_v2(db, createTableString, -1, &createTableStatement, nil) == SQLITE_OK {
        // 3
        if sqlite3_step(createTableStatement) == SQLITE_DONE {
            print("Contact table created.")
        } else {
            print("Contact table could not be created.")
        }
    } else {
        print("CREATE TABLE statement could not be prepared.")
    }
    // 4
    sqlite3_finalize(createTableStatement)
}

createTable()
//: ## Insert a Contact


//: ## Querying


//: ## Update


//: ## Delete


//: ## Errors


//: ## Close the database connection


//: Continue to [Making It Swift](@next)
