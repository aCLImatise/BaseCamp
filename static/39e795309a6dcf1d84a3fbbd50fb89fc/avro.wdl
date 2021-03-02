version 1.0

task Avro {
  input {
    Int? count
    Int? skip
    String? format
    Boolean? header
    Int? filter
    Boolean? print_schema
    String? fields
    File? schema
    String? input_type
    File? output_file
    String cat_vertical_line_write
    File var_file
    File? file_dot_dot_dot
  }
  command <<<
    avro \
      ~{cat_vertical_line_write} \
      ~{var_file} \
      ~{file_dot_dot_dot} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if (print_schema) then "--print-schema" else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(input_type) then ("--input-type " +  '"' + input_type + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    count: "number of records to print"
    skip: "number of records to skip"
    format: "record format"
    header: "print CSV header"
    filter: "filter records (e.g. r[\\\"age\\\"]>1)"
    print_schema: "print schema"
    fields: "fields to show, comma separated (show all by default)"
    schema: "schema file (required)"
    input_type: "input file(s) type (json or csv)"
    output_file: "output file\\n"
    cat_vertical_line_write: ""
    var_file: ""
    file_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}