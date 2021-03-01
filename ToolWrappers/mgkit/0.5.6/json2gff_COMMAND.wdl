version 1.0

task Json2gffCOMMAND {
  input {
    String? args
  }
  command <<<
    json2gff COMMAND \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}