version 1.0

task BedparseFormats {
  input {
    String bed_parse
  }
  command <<<
    bedparse formats \
      ~{bed_parse}
  >>>
  parameter_meta {
    bed_parse: ""
  }
  output {
    File out_stdout = stdout()
  }
}