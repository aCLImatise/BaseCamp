class: CommandLineTool
id: motif2Logo.pl.cwl
inputs:
- id: in_pdf
  doc: '(create a pdf: "motif file".pdf: default creates a PNG image)'
  type: boolean
  inputBinding:
    prefix: -pdf
- id: in_ns
  doc: '<#> (Number of sequences to feed seqlogo: default 100)'
  type: boolean
  inputBinding:
    prefix: -ns
- id: in_bit
  doc: '(scale logo by information content: default scales nucleotides to probability)'
  type: boolean
  inputBinding:
    prefix: -bit
- id: in_prefix_ie_outputprefixpng
  doc: '(prefix of output file, i.e. outputprefix.png : default, motif file)'
  type: File
  inputBinding:
    prefix: -o
- id: in_motif_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix_ie_outputprefixpng
  doc: '(prefix of output file, i.e. outputprefix.png : default, motif file)'
  type: File
  outputBinding:
    glob: $(inputs.in_prefix_ie_outputprefixpng)
cwlVersion: v1.1
baseCommand:
- motif2Logo.pl
