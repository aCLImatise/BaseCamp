version 1.0

task MsstitchDeletesets {
  input {
    File? input_file_format
    Directory? directory_to_output
    File? output_file
    File? dbfile
    Array[String] set_names
  }
  command <<<
    msstitch deletesets \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if defined(set_names) then ("--setnames " +  '"' + set_names + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msstitch:3.6--py_0"
  }
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    dbfile: "Database lookup file"
    set_names: "Names of biological sets. Can be specified with\\nquotation marks if spaces are used\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_to_output = "${in_directory_to_output}"
    File out_output_file = "${in_output_file}"
  }
}