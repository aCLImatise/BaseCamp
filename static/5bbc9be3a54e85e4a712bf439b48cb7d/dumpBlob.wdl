version 1.0

task DumpBlob {
  input {
    File? b
  }
  command <<<
    dumpBlob \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    b: ""
  }
  output {
    File out_stdout = stdout()
  }
}