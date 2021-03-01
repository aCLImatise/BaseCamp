class: CommandLineTool
id: bp_mrtrans.pl.cwl
inputs:
- id: in__output_filename
  doc: '- the output filename [default STDOUT]'
  type: File?
  inputBinding:
    prefix: -o
- id: in_of
  doc: "- output sequence format\n(multiple sequence alignment)\n[default phylip]"
  type: string?
  inputBinding:
    prefix: -of
- id: in__input_filename
  doc: '- the input filename [required]'
  type: File?
  inputBinding:
    prefix: -i
- id: in_if
  doc: "- input sequence format\n(multiple sequence alignment)\n[ default clustalw]"
  type: string?
  inputBinding:
    prefix: -if
- id: in_seq_db
  doc: '- the cDNA sequence database file'
  type: File?
  inputBinding:
    prefix: --seqdb
- id: in_seq_format
  doc: '- the cDNA seq db format (flatfile sequence format)'
  type: boolean?
  inputBinding:
    prefix: --seqformat
- id: in_coordinates
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_filename
  doc: '- the output filename [default STDOUT]'
  type: File?
  outputBinding:
    glob: $(inputs.in__output_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- bp_mrtrans.pl
