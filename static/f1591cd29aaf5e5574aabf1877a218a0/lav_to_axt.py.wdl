version 1.0

task LavToAxtpy {
  input {
    Boolean? silent
  }
  command <<<
    lav_to_axt_py \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    silent: ""
  }
  output {
    File out_stdout = stdout()
  }
}