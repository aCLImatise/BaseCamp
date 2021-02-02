version 1.0

task NwTrim {
  input {
    Boolean? ah
  }
  command <<<
    nw_trim \
      ~{if (ah) then "-ah" else ""}
  >>>
  parameter_meta {
    ah: ""
  }
  output {
    File out_stdout = stdout()
  }
}