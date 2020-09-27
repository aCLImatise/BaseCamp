version 1.0

task StrainestMapstatsMAPPED {
  input {
    String examples
  }
  command <<<
    strainest mapstats MAPPED \
      ~{examples}
  >>>
  parameter_meta {
    examples: "strainest mapstats mapped.fna stats"
  }
  output {
    File out_stdout = stdout()
  }
}