version 1.0

task Filtergff {
  input {
    Boolean? cite
  }
  command <<<
    filter_gff \
      ~{if (cite) then "--cite" else ""}
  >>>
  parameter_meta {
    cite: ""
  }
  output {
    File out_stdout = stdout()
  }
}