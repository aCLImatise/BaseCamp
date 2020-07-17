version 1.0

task Avro {
  input {
    String? count
    String? skip
    String? format
    Boolean? header
    String? filter
    Boolean? print_schema
    String? fields
    String? schema
    String? input_type
    String? output_file
    String cat_vertical_line_write
    File file
    File? file_dot_dot_dot
  }
  command <<<
    avro \
      ~{cat_vertical_line_write} \
      ~{file} \
      ~{file_dot_dot_dot} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--header" false="" header} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{true="--print-schema" false="" print_schema} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(input_type) then ("--input-type " +  '"' + input_type + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    count: "number of records to print"
    skip: "number of records to skip"
    format: "record format"
    header: "print CSV header"
    filter: "filter records (e.g. r['age']>1)"
    print_schema: "print schema"
    fields: "fields to show, comma separated (show all by default)"
    schema: "schema file (required)"
    input_type: "input file(s) type (json or csv)"
    output_file: "output file"
    cat_vertical_line_write: ""
    file: ""
    file_dot_dot_dot: ""
  }
}