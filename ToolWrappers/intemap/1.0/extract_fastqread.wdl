version 1.0

task ExtractFastqread {
  input {
    String? r
    String prog
  }
  command <<<
    extract_fastqread \
      ~{prog} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    r: ""
    prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}