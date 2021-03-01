version 1.0

task Purge {
  input {
    File var_file
    String score
    String options
  }
  command <<<
    purge \
      ~{var_file} \
      ~{score} \
      ~{options}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    var_file: ""
    score: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}