version 1.0

task BpMutatepl {
  input {
    String? percent
    Boolean? number
    File? output_file_optional
    Boolean? format
    Boolean? input_file
    String bioperl_lat_bioperl_dot_org
  }
  command <<<
    bp_mutate_pl \
      ~{bioperl_lat_bioperl_dot_org} \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{if (number) then "--number" else ""} \
      ~{if (output_file_optional) then "--output" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (input_file) then "--input" else ""}
  >>>
  parameter_meta {
    percent: "mutagenized"
    number: "Number of mutant sequences created"
    output_file_optional: "Output file (optional)"
    format: "Output format (default: fasta)"
    input_file: "Input file"
    bioperl_lat_bioperl_dot_org: "- General discussion"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_optional = "${in_output_file_optional}"
  }
}