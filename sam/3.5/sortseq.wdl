version 1.0

task Sortseq {
  input {
    String? db
    String? distfile
    String? option
    String run_name
  }
  command <<<
    sortseq \
      ~{run_name} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(distfile) then ("-distfile " +  '"' + distfile + '"') else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    db: "[-db seq_fn]* one or more sequence files"
    distfile: "score file (.dist or .mstat)"
    option: ""
    run_name: ""
  }
}