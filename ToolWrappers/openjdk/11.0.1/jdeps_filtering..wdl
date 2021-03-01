version 1.0

task JdepsFiltering {
  input {
    String j_deps
    String options
    File path_dot_dot_dot
  }
  command <<<
    jdeps filtering_ \
      ~{j_deps} \
      ~{options} \
      ~{path_dot_dot_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    j_deps: ""
    options: ""
    path_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}