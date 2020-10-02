version 1.0

task Toilwdlrunner {
  input {
    Int? dev_mode
    String? o
    String? job_store
    String wdl_file
    String secondary_file
  }
  command <<<
    toil_wdl_runner \
      ~{wdl_file} \
      ~{secondary_file} \
      ~{if defined(dev_mode) then ("--dev_mode " +  '"' + dev_mode + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(job_store) then ("--jobStore " +  '"' + job_store + '"') else ""}
  >>>
  parameter_meta {
    dev_mode: "1. Creates \\\"AST.out\\\", which holds the printed AST and"
    o: ""
    job_store: ""
    wdl_file: "A WDL workflow file."
    secondary_file: "A secondary data file (json)."
  }
  output {
    File out_stdout = stdout()
  }
}