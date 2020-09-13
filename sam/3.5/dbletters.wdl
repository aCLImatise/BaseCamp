version 1.0

task Dbletters {
  input {
    File? db
    String? option
    String run_name
  }
  command <<<
    dbletters \
      ~{run_name} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    db: "[-db seq_filen]*     one or more sequence files"
    option: ""
    run_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}