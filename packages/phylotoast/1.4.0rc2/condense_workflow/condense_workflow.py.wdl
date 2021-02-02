version 1.0

task CondenseWorkflowpy {
  input {
    Boolean? s
    String? r
    String? i
  }
  command <<<
    condense_workflow_py \
      ~{if (s) then "-s" else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    r: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}