class: CommandLineTool
id: phyluce_align_filter_characters_from_alignments.cwl
inputs:
- id: in_alignments
  doc: The input alignment files to filter
  type: string?
  inputBinding:
    prefix: --alignments
- id: in_output_fasta_file
  doc: The output FASTA file to create
  type: File?
  inputBinding:
    prefix: --output
- id: in_input_format
  doc: "The input alignment format\n"
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_var_3
  doc: '[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fasta_file
  doc: The output FASTA file to create
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fasta_file)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_filter_characters_from_alignments
