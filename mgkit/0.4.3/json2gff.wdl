version 1.0

task Json2gff {
  input {
    Boolean? cite
  }
  command <<<
    json2gff \
      ~{if (cite) then "--cite" else ""}
  >>>
  parameter_meta {
    cite: ""
  }
  output {
    File out_stdout = stdout()
  }
}