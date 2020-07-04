class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/paladin_index.cwl
inputs:
- id: enable_indexing_frames
  doc: Enable indexing all frames in nucleotide references
  type: boolean
  inputBinding:
    prefix: -f
- id: reference_type_reference
  doc: '<#>  Reference type: 1: Reference contains nucleotide sequences (requires
    corresponding .gff annotation) 2: Reference contains nucleotide sequences (coding
    only, eg curated transcriptome) 3: Reference contains protein sequences (UniProt
    or other source) 4: Development tests'
  type: boolean
  inputBinding:
    prefix: -r
- id: reference_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: annotation_dot_gff
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- paladin
- index
