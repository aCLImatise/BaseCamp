version 1.0

task Json2gffARGS {
  input {
    Int json_two_gff
    String var_command
    String? args
  }
  command <<<
    json2gff ARGS \
      ~{json_two_gff} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    json_two_gff: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}