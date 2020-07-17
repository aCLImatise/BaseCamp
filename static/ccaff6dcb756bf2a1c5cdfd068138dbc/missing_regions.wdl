version 1.0

task MissingRegions {
  input {
    String maf_file
    String reference
  }
  command <<<
    missing_regions \
      ~{maf_file} \
      ~{reference}
  >>>
  parameter_meta {
    maf_file: ""
    reference: ""
  }
}