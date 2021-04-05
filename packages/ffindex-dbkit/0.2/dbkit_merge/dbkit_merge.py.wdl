version 1.0

task DbkitMergepy {
  input {
    File? first_index
    File? first_data
    File? second_index
    File? second_data
    File? output_index
    File? output_database
    File? log
  }
  command <<<
    dbkit_merge_py \
      ~{if defined(first_index) then ("--firstindex " +  '"' + first_index + '"') else ""} \
      ~{if defined(first_data) then ("--firstdata " +  '"' + first_data + '"') else ""} \
      ~{if defined(second_index) then ("--secondindex " +  '"' + second_index + '"') else ""} \
      ~{if defined(second_data) then ("--seconddata " +  '"' + second_data + '"') else ""} \
      ~{if defined(output_index) then ("--outputindex " +  '"' + output_index + '"') else ""} \
      ~{if defined(output_database) then ("--outputdatabase " +  '"' + output_database + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ffindex-dbkit:0.2--pyh3252c3a_0"
  }
  parameter_meta {
    first_index: "First Index file"
    first_data: "First Data file"
    second_index: "Second Index file"
    second_data: "Second Data file"
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