version 1.0

task Asn2xml {
  input {
    Boolean? filename_asn_input
    Boolean? input_seqentry_optionaldefault
    Boolean? input_seqsubmit_optionaldefault
    Boolean? input_asnfile_binary
    File? filename_xml_output
    File? log_errors_file
  }
  command <<<
    asn2xml \
      ~{if (filename_asn_input) then "-i" else ""} \
      ~{if (input_seqentry_optionaldefault) then "-e" else ""} \
      ~{if (input_seqsubmit_optionaldefault) then "-s" else ""} \
      ~{if (input_asnfile_binary) then "-b" else ""} \
      ~{if (filename_xml_output) then "-o" else ""} \
      ~{if (log_errors_file) then "-l" else ""}
  >>>
  parameter_meta {
    filename_asn_input: "Filename for asn.1 input [File In]\\ndefault = stdin"
    input_seqentry_optionaldefault: "Input is a Seq-entry [T/F]  Optional\\ndefault = F"
    input_seqsubmit_optionaldefault: "Input is a Seq-submit [T/F]  Optional\\ndefault = F"
    input_asnfile_binary: "Input asnfile in binary mode [T/F]  Optional\\ndefault = T"
    filename_xml_output: "Filename for XML output [File Out]  Optional\\ndefault = stdout"
    log_errors_file: "Log errors to file named: [File Out]  Optional"
  }
  output {
    File out_stdout = stdout()
    File out_filename_xml_output = "${in_filename_xml_output}"
    File out_log_errors_file = "${in_log_errors_file}"
  }
}