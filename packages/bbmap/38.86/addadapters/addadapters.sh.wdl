version 1.0

task Addadapterssh {
  input {
    String in
  }
  command <<<
    addadapters_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}