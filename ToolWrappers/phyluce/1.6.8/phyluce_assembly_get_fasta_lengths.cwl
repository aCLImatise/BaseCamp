class: CommandLineTool
id: phyluce_assembly_get_fasta_lengths.cwl
inputs:
- id: in_input
  doc: The fasta file to summarize
  type: File?
  inputBinding:
    prefix: --input
- id: in_csv
  doc: Give output in CSV
  type: boolean?
  inputBinding:
    prefix: --csv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_fasta_lengths
