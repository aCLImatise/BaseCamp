version 1.0

task Meraculous4hpl {
  input {
    Boolean? more_options
    Boolean? options
  }
  command <<<
    meraculous4h_pl \
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