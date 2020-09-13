version 1.0

task MultipleFieldSelectionpy {
  input {
    Array[String] input_files
    String? key_field
    Array[String] fields
    String? separator
    File? output_file
    Boolean? no_header
  }
  command <<<
    multipleFieldSelection_py \
      ~{if defined(input_files) then ("--input-files " +  '"' + input_files + '"') else ""} \
      ~{if defined(key_field) then ("--key-field " +  '"' + key_field + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (no_header) then "--no-header" else ""}
  >>>
  parameter_meta {
    input_files: "spaced separated list of files to join."
    key_field: "common field among the input files."
    fields: "spaced separated list of fields to select.(starting in 1)"
    separator: "field separator"
    output_file: "name of the output file."
    no_header: "use it if the file has no header."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}