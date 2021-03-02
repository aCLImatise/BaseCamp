version 1.0

task SummarizePolishes {
  input {
    File? p
    Boolean? excel
  }
  command <<<
    summarizePolishes \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if (excel) then "-excel" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    p: ""
    excel: ""
  }
  output {
    File out_stdout = stdout()
  }
}