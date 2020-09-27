class: CommandLineTool
id: testval.cwl
inputs:
- id: in_filename_asn_input
  doc: "Filename for asn.1 input [File In]  Optional\ndefault = stdin"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_input_seqentry_optionaldefault
  doc: "Input is a Seq-entry [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_input_seqsubmit_optionaldefault
  doc: "Input is a Seq-submit [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_input_asnfile_binary
  doc: "Input asnfile in binary mode [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_filename_error_messages
  doc: "Filename for error messages [File Out]  Optional\ndefault = stderr"
  type: File
  inputBinding:
    prefix: -x
- id: in_filename_asn_output
  doc: Filename for asn.1 output [File Out]  Optional
  type: File
  inputBinding:
    prefix: -o
- id: in_output_asnfile_binary
  doc: "Output asnfile in binary mode [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_severity_error_count
  doc: "Severity of error for count in return code [Integer]\ndefault = 4\nrange from\
    \ 0 to 4"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_continue_asn_f
  doc: "Continue on ASN.1 error? [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_patch_invalid_sequence
  doc: "Patch invalid sequence residues? [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_lowest_severity_show
  doc: "Lowest severity of error to show [Integer]\ndefault = 3\nrange from 0 to 4"
  type: boolean
  inputBinding:
    prefix: -q
- id: in_asn_spec_level
  doc: "ASN.1 spec level to filter [Integer]\ndefault = 0\nrange from 0 to 3"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_use_seqmgr_indexing
  doc: "Use SeqMgr indexing? [T/F]  Optional\ndefault = T"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_validate_alignments_optionaldefault
  doc: "Validate alignments? [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -a
- id: in_require_isojta_optionaldefault
  doc: "Require ISO-JTA? [T/F]  Optional\ndefault = F\n"
  type: boolean
  inputBinding:
    prefix: -j
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filename_error_messages
  doc: "Filename for error messages [File Out]  Optional\ndefault = stderr"
  type: File
  outputBinding:
    glob: $(inputs.in_filename_error_messages)
- id: out_filename_asn_output
  doc: Filename for asn.1 output [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_filename_asn_output)
cwlVersion: v1.1
baseCommand:
- testval
