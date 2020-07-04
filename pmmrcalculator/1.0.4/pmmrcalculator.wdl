version 1.0

task Pmmrcalculator {
  input {
    String? desired_input_file_prefix
    String? desired_output_file
    String? suffix
    Boolean? json
  }
  command <<<
    pmmrcalculator \
      ~{if defined(desired_input_file_prefix) then ("--Input " +  '"' + desired_input_file_prefix + '"') else ""} \
      ~{if defined(desired_output_file) then ("--Output " +  '"' + desired_output_file + '"') else ""} \
      ~{if defined(suffix) then ("--Suffix " +  '"' + suffix + '"') else ""} \
      ~{true="--json" false="" json}
  >>>
  parameter_meta {
    desired_input_file_prefix: "The desired input file prefix. Input files are assumed to be <INPUT PREFIX>.geno, <INPUT PREFIX>.snp and <INPUT PREFIX>.ind ."
    desired_output_file: "The desired output file name. Omit to print to stdout."
    suffix: "The desired input file suffix. Input files are assumed to be <INPUT PREFIX>.geno<INPUT SUFFIX>, <INPUT PREFIX>.snp<INPUT SUFFIX> and <INPUT PREFIX>.ind<INPUT SUFFIX> ."
    json: "Create additional json formatted output file named <OUTPUT FILE>.json . [Default: 'pmmrcalculator_output.json']"
  }
}