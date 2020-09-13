version 1.0

task Testval {
  input {
    Boolean? filename_asn_input
    Boolean? input_seqentry_optionaldefault
    Boolean? input_seqsubmit_optionaldefault
    Boolean? input_asnfile_binary
    File? filename_error_messages
    File? filename_asn_output
    Boolean? output_asnfile_binary
    Boolean? severity_error_count
    Boolean? continue_asn_f
    Boolean? patch_invalid_sequence
    Boolean? lowest_severity_show
    Boolean? asn_spec_level
    Boolean? use_seqmgr_indexing
    Boolean? validate_alignments_optionaldefault
    Boolean? require_isojta_optionaldefault
  }
  command <<<
    testval \
      ~{if (filename_asn_input) then "-i" else ""} \
      ~{if (input_seqentry_optionaldefault) then "-e" else ""} \
      ~{if (input_seqsubmit_optionaldefault) then "-s" else ""} \
      ~{if (input_asnfile_binary) then "-b" else ""} \
      ~{if (filename_error_messages) then "-x" else ""} \
      ~{if (filename_asn_output) then "-o" else ""} \
      ~{if (output_asnfile_binary) then "-t" else ""} \
      ~{if (severity_error_count) then "-r" else ""} \
      ~{if (continue_asn_f) then "-c" else ""} \
      ~{if (patch_invalid_sequence) then "-p" else ""} \
      ~{if (lowest_severity_show) then "-q" else ""} \
      ~{if (asn_spec_level) then "-l" else ""} \
      ~{if (use_seqmgr_indexing) then "-d" else ""} \
      ~{if (validate_alignments_optionaldefault) then "-a" else ""} \
      ~{if (require_isojta_optionaldefault) then "-j" else ""}
  >>>
  parameter_meta {
    filename_asn_input: "Filename for asn.1 input [File In]  Optional\\ndefault = stdin"
    input_seqentry_optionaldefault: "Input is a Seq-entry [T/F]  Optional\\ndefault = F"
    input_seqsubmit_optionaldefault: "Input is a Seq-submit [T/F]  Optional\\ndefault = F"
    input_asnfile_binary: "Input asnfile in binary mode [T/F]  Optional\\ndefault = F"
    filename_error_messages: "Filename for error messages [File Out]  Optional\\ndefault = stderr"
    filename_asn_output: "Filename for asn.1 output [File Out]  Optional"
    output_asnfile_binary: "Output asnfile in binary mode [T/F]  Optional\\ndefault = F"
    severity_error_count: "Severity of error for count in return code [Integer]\\ndefault = 4\\nrange from 0 to 4"
    continue_asn_f: "Continue on ASN.1 error? [T/F]  Optional\\ndefault = F"
    patch_invalid_sequence: "Patch invalid sequence residues? [T/F]  Optional\\ndefault = F"
    lowest_severity_show: "Lowest severity of error to show [Integer]\\ndefault = 3\\nrange from 0 to 4"
    asn_spec_level: "ASN.1 spec level to filter [Integer]\\ndefault = 0\\nrange from 0 to 3"
    use_seqmgr_indexing: "Use SeqMgr indexing? [T/F]  Optional\\ndefault = T"
    validate_alignments_optionaldefault: "Validate alignments? [T/F]  Optional\\ndefault = F"
    require_isojta_optionaldefault: "Require ISO-JTA? [T/F]  Optional\\ndefault = F\\n"
  }
  output {
    File out_stdout = stdout()
    File out_filename_error_messages = "${in_filename_error_messages}"
    File out_filename_asn_output = "${in_filename_asn_output}"
  }
}