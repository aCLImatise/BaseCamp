class: CommandLineTool
id: sixframe.rb.cwl
inputs:
- id: in_output
  doc: An explicitly named output file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_peptide_shaker
  doc: Format fasta output for peptideshaker compatibility [false]
  type: boolean?
  inputBinding:
    prefix: --peptideshaker
- id: in_coords
  doc: Write genomic coordinates in the fasta header [false]
  type: boolean?
  inputBinding:
    prefix: --coords
- id: in_strip_header
  doc: Dont write sequence definition [true]
  type: boolean?
  inputBinding:
    prefix: --strip-header
- id: in_min_len
  doc: Minimum ORF length to keep [20]
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_gff_three
  doc: Output gff3 instead of fasta [false]
  type: boolean?
  inputBinding:
    prefix: --gff3
- id: in_genome_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: An explicitly named output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- sixframe.rb
