version 1.0

task SamJuncs {
  input {
    String hits_dots_am
  }
  command <<<
    sam_juncs \
      ~{hits_dots_am}
  >>>
  parameter_meta {
    hits_dots_am: ""
  }
  output {
    File out_stdout = stdout()
  }
}