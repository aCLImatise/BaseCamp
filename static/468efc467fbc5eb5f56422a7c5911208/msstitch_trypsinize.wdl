version 1.0

task MsstitchTrypsinize {
  input {
    String? input_file_format
    String? directory_to_output
    String? output_file
    String? misc_leav
    Int? min_len
    Boolean? cut_proline
  }
  command <<<
    msstitch trypsinize \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(misc_leav) then ("--miscleav " +  '"' + misc_leav + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{true="--cutproline" false="" cut_proline}
  >>>
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    misc_leav: "Amount of missed cleavages to allow when trypsinizing, default is 0"
    min_len: "Minimum length of peptide to be included"
    cut_proline: "Flag to make trypsin before a proline residue. Then filtering will be done against both cut and non-cut peptides."
  }
}