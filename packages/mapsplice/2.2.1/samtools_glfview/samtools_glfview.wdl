version 1.0

task SamtoolsGlfview {
  input {
    String glf_view
    String in_dot_glf
  }
  command <<<
    samtools glfview \
      ~{glf_view} \
      ~{in_dot_glf}
  >>>
  parameter_meta {
    glf_view: ""
    in_dot_glf: ""
  }
  output {
    File out_stdout = stdout()
  }
}