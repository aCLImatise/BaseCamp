version 1.0

task IuGenMatchingFastqFiles {
  input {
    Boolean? identifier_tested
    Boolean? sequential
    File? r_one
    File? r_two
  }
  command <<<
    iu-gen-matching-fastq-files \
      ~{true="--identifier-tested" false="" identifier_tested} \
      ~{true="--sequential" false="" sequential} \
      ~{if defined(r_one) then ("--r1 " +  '"' + r_one + '"') else ""} \
      ~{if defined(r_two) then ("--r2 " +  '"' + r_two + '"') else ""}
  >>>
  parameter_meta {
    identifier_tested: "Use this flag to indicate that you tested your identifier."
    sequential: "Your identifier code parses an integer value that can link pairs, and is incremental throughout the file."
    r_one: ""
    r_two: ""
  }
}