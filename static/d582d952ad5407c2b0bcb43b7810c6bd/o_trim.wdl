version 1.0

task Otrim {
  input {
    Int? trim_from
    Int? trim_to
    Int? min_length
    File? output_file_name
  }
  command <<<
    o_trim \
      ~{if defined(trim_from) then ("--trim-from " +  '"' + trim_from + '"') else ""} \
      ~{if defined(trim_to) then ("--trim-to " +  '"' + trim_to + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    trim_from: "Start position"
    trim_to: "End position"
    min_length: "Minimum lenght of a read to be kept"
    output_file_name: "Output file name.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}