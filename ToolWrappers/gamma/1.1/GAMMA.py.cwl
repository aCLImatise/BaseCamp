class: CommandLineTool
id: GAMMA.py.cwl
inputs:
- id: in_all
  doc: include all gene matches, even overlaps
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_extended
  doc: writes out all protein mutations
  type: boolean?
  inputBinding:
    prefix: --extended
- id: in_fast_a
  doc: write fasta of gene matches
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_gff
  doc: write gene matches as gff file
  type: boolean?
  inputBinding:
    prefix: --gff
- id: in_percent_identity
  doc: "minimum nucleotide identity for blat search (default =\n90)\n"
  type: long?
  inputBinding:
    prefix: --percent_identity
- id: in_input_fast_a
  doc: input fasta
  type: string
  inputBinding:
    position: 0
- id: in_database
  doc: input database
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: output name
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gamma:1.1--0
cwlVersion: v1.1
baseCommand:
- GAMMA.py
