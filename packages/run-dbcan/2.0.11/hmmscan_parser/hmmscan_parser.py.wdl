version 1.0

task Hmmscanparserpy {
  input {
    String cat
    File? var_file
  }
  command <<<
    hmmscan_parser_py \
      ~{cat} \
      ~{var_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0"
  }
  parameter_meta {
    cat: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}