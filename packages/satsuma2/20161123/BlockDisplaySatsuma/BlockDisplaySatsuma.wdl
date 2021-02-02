version 1.0

task BlockDisplaySatsuma {
  input {
    Boolean? string_satsuma_file
  }
  command <<<
    BlockDisplaySatsuma \
      ~{if (string_satsuma_file) then "-i" else ""}
  >>>
  parameter_meta {
    string_satsuma_file: "<string> : satsuma summary file"
  }
  output {
    File out_stdout = stdout()
  }
}