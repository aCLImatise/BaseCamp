class: CommandLineTool
id: o_treat_homopolymer_regions.cwl
inputs:
- id: in_input_alignment
  doc: align2first output (.paf file)
  type: File
  inputBinding:
    prefix: --input-alignment
- id: in_output_fast_a
  doc: "Output FASTA file to store homopolymer-treated\nsequences"
  type: File
  inputBinding:
    prefix: --output-fasta
- id: in_log
  doc: Log file. Default, STDOUT.
  type: File
  inputBinding:
    prefix: --log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input_alignment
  doc: align2first output (.paf file)
  type: File
  outputBinding:
    glob: $(inputs.in_input_alignment)
- id: out_output_fast_a
  doc: "Output FASTA file to store homopolymer-treated\nsequences"
  type: File
  outputBinding:
    glob: $(inputs.in_output_fast_a)
cwlVersion: v1.1
baseCommand:
- o-treat-homopolymer-regions
