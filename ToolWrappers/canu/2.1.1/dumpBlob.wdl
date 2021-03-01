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
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    b: ""
  }
  output {
    File out_stdout = stdout()
  }
}