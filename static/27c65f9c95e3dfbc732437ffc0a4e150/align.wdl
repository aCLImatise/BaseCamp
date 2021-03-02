version 1.0

task Align {
  input {
    String? m
    String seq_file
  }
  command <<<
    align \
      ~{seq_file} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    m: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}