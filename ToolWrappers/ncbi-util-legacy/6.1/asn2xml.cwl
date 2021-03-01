class: CommandLineTool
id: asn2xml.cwl
inputs:
- id: in_filename_asn_input
  doc: "Filename for asn.1 input [File In]\ndefault = stdin"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_input_seqentry_optionaldefault
  doc: "Input is a Seq-entry [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_input_seqsubmit_optionaldefault
  doc: "Input is a Seq-submit [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_input_asnfile_optionaldefault
  doc: "Input asnfile in binary mode [T/F]  Optional\ndefault = T"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_filename_optionaldefault_stdout
  doc: "Filename for XML output [File Out]  Optional\ndefault = stdout"
  type: File?
  inputBinding:
    prefix: -o
- id: in_log_errors_file
  doc: 'Log errors to file named: [File Out]  Optional'
  type: File?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filename_optionaldefault_stdout
  doc: "Filename for XML output [File Out]  Optional\ndefault = stdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_filename_optionaldefault_stdout)
- id: out_log_errors_file
  doc: 'Log errors to file named: [File Out]  Optional'
  type: File?
  outputBinding:
    glob: $(inputs.in_log_errors_file)
hints: []
cwlVersion: v1.1
baseCommand:
- asn2xml
