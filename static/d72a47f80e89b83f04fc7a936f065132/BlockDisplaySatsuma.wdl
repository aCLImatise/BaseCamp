version 1.0

task BlockDisplaySatsuma {
  input {
    Boolean? string_summary_file
  }
  command <<<
    BlockDisplaySatsuma \
      ~{if (string_summary_file) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_summary_file: "<string> : satsuma summary file"
  }
  output {
    File out_stdout = stdout()
  }
}