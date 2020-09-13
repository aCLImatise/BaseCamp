version 1.0

task SplinterScaffoldspl {
  input {
    Boolean? more_options
    Boolean? options
  }
  command <<<
    splinter_scaffolds_pl \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}