version 1.0

task Blast2gff {
  input {
    Boolean? cite
  }
  command <<<
    blast2gff \
      ~{if (cite) then "--cite" else ""}
  >>>
  parameter_meta {
    cite: ""
  }
  output {
    File out_stdout = stdout()
  }
}