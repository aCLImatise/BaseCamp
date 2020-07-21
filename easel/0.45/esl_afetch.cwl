class: CommandLineTool
id: ../../../esl_afetch.cwl
inputs:
- id: second_cmdline_arg
  doc: ': second cmdline arg is a file of names to retrieve'
  type: boolean
  inputBinding:
    prefix: -f
- id: output_alignments_file
  doc: ': output alignments to file <f> instead of stdout'
  type: string
  inputBinding:
    prefix: -o
- id: output_alignment_file
  doc: ': output alignment to file named <key>'
  type: boolean
  inputBinding:
    prefix: -O
- id: in_format
  doc: ': specify that <msafile> is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: out_format
  doc: ': output fetched alignment(s) in format <s>  [Stockholm]'
  type: string
  inputBinding:
    prefix: --outformat
- id: index
  doc: ': index the <msafile>, creating <msafile>.ssi'
  type: boolean
  inputBinding:
    prefix: --index
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-afetch
