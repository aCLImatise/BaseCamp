version 1.0

task Checksub {
  input {
    Boolean? input_data_type
    Boolean? input_data_binary
    Boolean? output_data_default
  }
  command <<<
    checksub \
      ~{if (input_data_type) then "-i" else ""} \
      ~{if (input_data_binary) then "-b" else ""} \
      ~{if (output_data_default) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_data_type: "Input data [Data In]\\nData Type = Seq-submit"
    input_data_binary: "Input data is binary [T/F]  Optional\\ndefault = F"
    output_data_default: "Output data [Data Out]\\ndefault = stdout\\nData Type = Seq-submit\\n"
  }
  output {
    File out_stdout = stdout()
  }
}