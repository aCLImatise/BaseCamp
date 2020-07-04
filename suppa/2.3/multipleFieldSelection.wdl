version 1.0

task MultipleFieldSelection.py {
  input {
    Array[String] input_files
    String? key_field
    Array[String] fields
    String? separator
    String? output_file
    Boolean? no_header
  }
  command <<<
    multipleFieldSelection.py \
      ~{if defined(input_files) then ("--input-files " +  '"' + input_files + '"') else ""} \
      ~{if defined(key_field) then ("--key-field " +  '"' + key_field + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{true="--no-header" false="" no_header}
  >>>
  parameter_meta {
    input_files: "spaced separated list of files to join."
    key_field: "common field among the input files."
    fields: "spaced separated list of fields to select.(starting in 1)"
    separator: "field separator"
    output_file: "name of the output file."
    no_header: "use it if the file has no header."
  }
}