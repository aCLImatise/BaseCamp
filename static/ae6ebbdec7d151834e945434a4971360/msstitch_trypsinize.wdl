version 1.0

task MsstitchTrypsinize {
  input {
    File? input_file_format
    Directory? directory_to_output
    File? output_file
    Int? misc_leav
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
      ~{if (cut_proline) then "--cutproline" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msstitch:3.5--py_0"
  }
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    misc_leav: "Amount of missed cleavages to allow when trypsinizing,\\ndefault is 0"
    min_len: "Minimum length of peptide to be included"
    cut_proline: "Flag to make trypsin before a proline residue. Then\\nfiltering will be done against both cut and non-cut\\npeptides.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_to_output = "${in_directory_to_output}"
    File out_output_file = "${in_output_file}"
  }
}