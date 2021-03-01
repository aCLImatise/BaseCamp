version 1.0

task FindErrorsDump {
  input {
    File? r
  }
  command <<<
    findErrors_Dump \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}