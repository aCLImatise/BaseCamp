class: CommandLineTool
id: paladin_index.cwl
inputs:
- id: in_enable_indexing_frames
  doc: Enable indexing all frames in nucleotide references
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_reference_type_reference
  doc: "<#>  Reference type:\n1: Reference contains nucleotide sequences (requires\
    \ corresponding .gff annotation)\n2: Reference contains nucleotide sequences (coding\
    \ only, eg curated transcriptome)\n3: Reference contains protein sequences (UniProt\
    \ or other source)\n4: Development tests"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_reference_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_annotation_dot_gff
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- paladin
- index
