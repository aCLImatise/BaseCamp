version 1.0

task AppendSff {
  input {
    String add_me_dots_ff
  }
  command <<<
    append_sff \
      ~{add_me_dots_ff}
  >>>
  parameter_meta {
    add_me_dots_ff: ""
  }
  output {
    File out_stdout = stdout()
  }
}