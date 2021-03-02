version 1.0

task Mean {
  input {
    Float? threshold
    String? option_dot_dot_dot
  }
  command <<<
    mean \
      ~{option_dot_dot_dot} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threshold: "The minimum probability threshold (default=1e-30)"
    option_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}