version 1.0

task AxtToMafpy {
  input {
    Boolean? silent
  }
  command <<<
    axt_to_maf_py \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    silent: ": prevents stats report"
  }
  output {
    File out_stdout = stdout()
  }
}