version 1.0

task Bedparse3pUTR {
  input {
    String bed_file
  }
  command <<<
    bedparse 3pUTR \
      ~{bed_file}
  >>>
  parameter_meta {
    bed_file: "Path to the BED file."
  }
}