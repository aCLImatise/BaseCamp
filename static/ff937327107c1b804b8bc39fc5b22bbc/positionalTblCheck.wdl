version 1.0

task PositionalTblCheck {
  input {
    String verboseVerbose
    String? dbDb
    String? tableTable
  }
  command <<<
    positionalTblCheck \
      ~{dbDb} \
      ~{if defined(verboseVerbose) then ("-verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{tableTable}
  >>>
}