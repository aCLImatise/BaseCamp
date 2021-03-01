version 1.0

task Getmesh {
  input {
    Boolean? input_data_type
    Boolean? input_data_binary
    File? output_list
  }
  command <<<
    getmesh \
      ~{if (input_data_type) then "-i" else ""} \
      ~{if (input_data_binary) then "-b" else ""} \
      ~{if (output_list) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_data_type: "Input data [Data In]\\nData Type = Medline-entry"
    input_data_binary: "Input data is binary [T/F]  Optional\\ndefault = F"
    output_list: "Output list [File Out]"
  }
  output {
    File out_stdout = stdout()
    File out_output_list = "${in_output_list}"
  }
}