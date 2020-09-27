version 1.0

task BedparseSpecifications {
  input {
    String bed_parse
  }
  command <<<
    bedparse specifications \
      ~{bed_parse}
  >>>
  parameter_meta {
    bed_parse: ""
  }
  output {
    File out_stdout = stdout()
  }
}