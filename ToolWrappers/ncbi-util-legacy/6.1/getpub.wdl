version 1.0

task Getpub {
  input {
    Boolean? input_binary_data
    Boolean? medline_uid_find
    Boolean? input_index_table
    Boolean? output_data_default
    Boolean? output_data_binary
  }
  command <<<
    getpub \
      ~{if (input_binary_data) then "-i" else ""} \
      ~{if (medline_uid_find) then "-u" else ""} \
      ~{if (input_index_table) then "-t" else ""} \
      ~{if (output_data_default) then "-o" else ""} \
      ~{if (output_data_binary) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_binary_data: "Input binary data [Data In]\\ndefault = medline.val\\nData Type = Pub-set"
    medline_uid_find: "Medline UID to find [Integer]\\ndefault = 88055872"
    input_index_table: "Input index table [File In]\\ndefault = medline.idx"
    output_data_default: "Output data [Data Out]\\ndefault = stdout\\nData Type = Medline-entry"
    output_data_binary: "Output data is binary [T/F]\\ndefault = F\\n"
  }
  output {
    File out_stdout = stdout()
  }
}