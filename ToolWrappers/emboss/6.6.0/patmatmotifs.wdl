version 1.0

task Patmatmotifs {
  input {
    Boolean? full
    String patterns
  }
  command <<<
    patmatmotifs \
      ~{patterns} \
      ~{if (full) then "-full" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    full: "boolean    [N] Provide full documentation for matching"
    patterns: "-[no]prune          boolean    [Y] Ignore simple patterns. If this is true"
  }
  output {
    File out_stdout = stdout()
  }
}