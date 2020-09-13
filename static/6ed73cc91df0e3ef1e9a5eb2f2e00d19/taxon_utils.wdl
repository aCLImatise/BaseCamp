version 1.0

task Taxonutils {
  input {
    Boolean? cite
  }
  command <<<
    taxon_utils \
      ~{if (cite) then "--cite" else ""}
  >>>
  parameter_meta {
    cite: ""
  }
  output {
    File out_stdout = stdout()
  }
}