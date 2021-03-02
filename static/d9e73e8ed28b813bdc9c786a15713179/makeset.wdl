version 1.0

task Makeset {
  input {
    Boolean? input_file_names
    Boolean? input_data_binary
    Boolean? output_data_optionaldefault
    Boolean? output_bioseqset_default
    Boolean? bioseqsetclass_default_
    Boolean? bioseqsetrelease__optional
  }
  command <<<
    makeset \
      ~{if (input_file_names) then "-i" else ""} \
      ~{if (input_data_binary) then "-d" else ""} \
      ~{if (output_data_optionaldefault) then "-b" else ""} \
      ~{if (output_bioseqset_default) then "-o" else ""} \
      ~{if (bioseqsetclass_default_) then "-c" else ""} \
      ~{if (bioseqsetrelease__optional) then "-r" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_names: "Input File Names [File In]\\ndefault = stdin"
    input_data_binary: "Input data is binary [T/F]  Optional\\ndefault = F"
    output_data_optionaldefault: "Output data as binary [T/F]  Optional\\ndefault = T"
    output_bioseqset_default: "Output Bioseq-set [Data Out]\\ndefault = stdout\\nData Type = Bioseq-set"
    bioseqsetclass_default_: "Bioseq-set.class [Integer]\\ndefault = 255"
    bioseqsetrelease__optional: "Bioseq-set.release [String]  Optional"
  }
  output {
    File out_stdout = stdout()
  }
}