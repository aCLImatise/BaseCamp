version 1.0

task Idcat {
  input {
    String? fields
    Boolean? overwrite_file_it
    Boolean? arg_sort_single
    File? arg_output_filename
    Boolean? prints_extra_information
    String scan
    String mz
    String score
    String peptide
  }
  command <<<
    idcat \
      ~{scan} \
      ~{mz} \
      ~{score} \
      ~{peptide} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if (overwrite_file_it) then "-f" else ""} \
      ~{if (arg_sort_single) then "-s" else ""} \
      ~{if (arg_output_filename) then "-o" else ""} \
      ~{if (prints_extra_information) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    fields: ": comma separated list of fields to display"
    overwrite_file_it: "[ --force ]        : overwrite file if it exists."
    arg_sort_single: "[ --sort ] arg     : sort by (single) column"
    arg_output_filename: "[ --output ] arg   : output filename or directory (for multiple files)."
    prints_extra_information: "[ --verbose ]      : prints extra information."
    scan: "rt"
    mz: "charge"
    score: "scoretype"
    peptide: "protein"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_filename = "${in_arg_output_filename}"
  }
}