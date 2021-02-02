version 1.0

task Cromwelltools {
  input {
    Boolean? v
  }
  command <<<
    cromwell_tools \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}