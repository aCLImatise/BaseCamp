version 1.0

task Bedparse5pUTR {
  input {
    String bed_file
  }
  command <<<
    bedparse 5pUTR \
      ~{bed_file}
  >>>
  parameter_meta {
    bed_file: "Path to the BED file."
  }
}