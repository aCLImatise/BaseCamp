version 1.0

task Idcat {
  input {
    String? fields
    Boolean? overwrite_file_exists
    Boolean? arg_sort_single
    Boolean? arg_output_filename
    Boolean? prints_extra_information
    File? file_masks
  }
  command <<<
    idcat \
      ~{file_masks} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{true="-f" false="" overwrite_file_exists} \
      ~{true="-s" false="" arg_sort_single} \
      ~{true="-o" false="" arg_output_filename} \
      ~{true="-v" false="" prints_extra_information}
  >>>
  parameter_meta {
    fields: ": comma separated list of fields to display"
    overwrite_file_exists: "[ --force ]        : overwrite file if it exists."
    arg_sort_single: "[ --sort ] arg     : sort by (single) column"
    arg_output_filename: "[ --output ] arg   : output filename or directory (for multiple files)."
    prints_extra_information: "[ --verbose ]      : prints extra information."
    file_masks: ""
  }
}