version 1.0

task MergeScaffoldsBySynteny {
  input {
    Boolean? string_input_summary
  }
  command <<<
    MergeScaffoldsBySynteny \
      ~{if (string_input_summary) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_input_summary: "<string> : input file (satsuma summary)"
  }
  output {
    File out_stdout = stdout()
  }
}