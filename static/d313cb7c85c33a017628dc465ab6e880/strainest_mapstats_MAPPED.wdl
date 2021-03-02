version 1.0

task StrainestMapstatsMAPPED {
  input {
    String examples
  }
  command <<<
    strainest mapstats MAPPED \
      ~{examples}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    examples: "strainest mapstats mapped.fna stats"
  }
  output {
    File out_stdout = stdout()
  }
}