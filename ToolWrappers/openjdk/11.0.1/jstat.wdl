version 1.0

task Jstat {
  input {
    Boolean? flag_pass_flag
  }
  command <<<
    jstat \
      ~{if (flag_pass_flag) then "-J" else ""}
  >>>
  parameter_meta {
    flag_pass_flag: "<flag>      Pass <flag> directly to the runtime system."
  }
  output {
    File out_stdout = stdout()
  }
}