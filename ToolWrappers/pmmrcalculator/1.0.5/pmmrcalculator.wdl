version 1.0

task Pmmrcalculator {
  input {
    File? desired_input_file_prefix
    File? desired_output_file
    File? suffix
    File? json
  }
  command <<<
    pmmrcalculator \
      ~{if defined(desired_input_file_prefix) then ("--Input " +  '"' + desired_input_file_prefix + '"') else ""} \
      ~{if defined(desired_output_file) then ("--Output " +  '"' + desired_output_file + '"') else ""} \
      ~{if defined(suffix) then ("--Suffix " +  '"' + suffix + '"') else ""} \
      ~{if (json) then "--json" else ""}
  >>>
  parameter_meta {
    desired_input_file_prefix: "The desired input file prefix. Input files are assumed\\nto be <INPUT PREFIX>.geno, <INPUT PREFIX>.snp and\\n<INPUT PREFIX>.ind ."
    desired_output_file: "The desired output file name. Omit to print to stdout."
    suffix: "The desired input file suffix. Input files are assumed\\nto be <INPUT PREFIX>.geno<INPUT SUFFIX>, <INPUT\\nPREFIX>.snp<INPUT SUFFIX> and <INPUT PREFIX>.ind<INPUT\\nSUFFIX> ."
    json: "Create additional json formatted output file named\\n<OUTPUT FILE>.json . [Default:\\n'pmmrcalculator_output.json']\\n"
  }
  output {
    File out_stdout = stdout()
    File out_desired_output_file = "${in_desired_output_file}"
    File out_json = "${in_json}"
  }
}