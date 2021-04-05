version 1.0

task DbkitExtractpy {
  input {
    String? list
    File? index
    File? database
    File? output_index
    File? output_database
    File? log
  }
  command <<<
    dbkit_extract_py \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(output_index) then ("--outputindex " +  '"' + output_index + '"') else ""} \
      ~{if defined(output_database) then ("--outputdatabase " +  '"' + output_database + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ffindex-dbkit:0.2--pyh3252c3a_0"
  }
  parameter_meta {
    list: "List of entries to be extracted"
    index: "Database Index file (ffindex)"
    database: "Database Data file (ffdata)"
    output_index: "Output Index file"
    output_database: "Output Data file"
    log: "Log file"
  }
  output {
    File out_stdout = stdout()
    File out_output_index = "${in_output_index}"
    File out_output_database = "${in_output_database}"
  }
}