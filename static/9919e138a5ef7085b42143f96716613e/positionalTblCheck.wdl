version 1.0

task PositionalTblCheck {
  input {
    String? verbose
    String db
    String table
  }
  command <<<
    positionalTblCheck \
      ~{db} \
      ~{table} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    verbose: "n>=2, print tables as checked"
    db: ""
    table: ""
  }
}