version 1.0

task Indexpub {
  input {
    Boolean? input_data_default
    Boolean? input_data_binary
    File? output_index_table
  }
  command <<<
    indexpub \
      ~{if (input_data_default) then "-i" else ""} \
      ~{if (input_data_binary) then "-b" else ""} \
      ~{if (output_index_table) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_data_default: "Input data [Data In]\\ndefault = medline.val\\nData Type = Pub-set"
    input_data_binary: "Input data is binary [T/F]  Optional\\ndefault = T"
    output_index_table: "Output index table [File Out]\\ndefault = medline.idx\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_index_table = "${in_output_index_table}"
  }
}