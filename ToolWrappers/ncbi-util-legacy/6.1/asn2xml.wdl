version 1.0

task Asn2xml {
  input {
    Boolean? filename_asn_input
    Boolean? input_seqentry_optionaldefault
    Boolean? input_seqsubmit_optionaldefault
    Boolean? input_asnfile_optionaldefault
    File? filename_optionaldefault_stdout
    File? log_errors_file
  }
  command <<<
    asn2xml \
      ~{if (filename_asn_input) then "-i" else ""} \
      ~{if (input_seqentry_optionaldefault) then "-e" else ""} \
      ~{if (input_seqsubmit_optionaldefault) then "-s" else ""} \
      ~{if (input_asnfile_optionaldefault) then "-b" else ""} \
      ~{if (filename_optionaldefault_stdout) then "-o" else ""} \
      ~{if (log_errors_file) then "-l" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filename_asn_input: "Filename for asn.1 input [File In]\\ndefault = stdin"
    input_seqentry_optionaldefault: "Input is a Seq-entry [T/F]  Optional\\ndefault = F"
    input_seqsubmit_optionaldefault: "Input is a Seq-submit [T/F]  Optional\\ndefault = F"
    input_asnfile_optionaldefault: "Input asnfile in binary mode [T/F]  Optional\\ndefault = T"
    filename_optionaldefault_stdout: "Filename for XML output [File Out]  Optional\\ndefault = stdout"
    log_errors_file: "Log errors to file named: [File Out]  Optional"
  }
  output {
    File out_stdout = stdout()
    File out_filename_optionaldefault_stdout = "${in_filename_optionaldefault_stdout}"
    File out_log_errors_file = "${in_log_errors_file}"
  }
}