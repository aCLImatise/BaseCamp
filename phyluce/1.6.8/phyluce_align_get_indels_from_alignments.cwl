class: CommandLineTool
id: ../../../phyluce_align_get_indels_from_alignments.cwl
inputs:
- id: in_var_0
  doc: ''
  type: string
  inputBinding:
    prefix: --outgroup
- id: in_alignments
  doc: The directory containing the alignment files
  type: Directory
  inputBinding:
    prefix: --alignments
- id: in_input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
- id: in_trim
  doc: "Count indels only after removing gaps/missing data\nfrom alignment ends"
  type: string
  inputBinding:
    prefix: --trim
- id: in_cores
  doc: The number of cores to use.
  type: long
  inputBinding:
    prefix: --cores
- id: in_var_5
  doc: '[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_indels_from_alignments
