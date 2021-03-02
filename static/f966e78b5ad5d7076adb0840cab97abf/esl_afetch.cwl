class: CommandLineTool
id: esl_afetch.cwl
inputs:
- id: in_second_cmdline_arg
  doc: ': second cmdline arg is a file of names to retrieve'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_output_alignments_file
  doc: ': output alignments to file <f> instead of stdout'
  type: File?
  inputBinding:
    prefix: -o
- id: in_output_alignment_file
  doc: ': output alignment to file named <key>'
  type: File?
  inputBinding:
    prefix: -O
- id: in_in_format
  doc: ': specify that <msafile> is in format <s>'
  type: string?
  inputBinding:
    prefix: --informat
- id: in_out_format
  doc: ': output fetched alignment(s) in format <s>  [Stockholm]'
  type: string?
  inputBinding:
    prefix: --outformat
- id: in_index
  doc: ': index the <msafile>, creating <msafile>.ssi'
  type: boolean?
  inputBinding:
    prefix: --index
- id: in_msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_name_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_alignments_file
  doc: ': output alignments to file <f> instead of stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_alignments_file)
- id: out_output_alignment_file
  doc: ': output alignment to file named <key>'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_alignment_file)
hints: []
cwlVersion: v1.1
baseCommand:
- esl-afetch
