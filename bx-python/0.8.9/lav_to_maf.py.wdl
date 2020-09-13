version 1.0

task LavToMafpy {
  input {
    Boolean? silent
  }
  command <<<
    lav_to_maf_py \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    silent: ""
  }
  output {
    File out_stdout = stdout()
  }
}