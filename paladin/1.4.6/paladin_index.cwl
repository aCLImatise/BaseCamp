class: CommandLineTool
id: paladin_index.cwl
inputs:
- id: reference_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: annotation_gff
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: f
  doc: Enable indexing all frames in nucleotide references
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: '<#>  Reference type: 1: Reference contains nucleotide sequences (requires
    corresponding .gff annotation) 2: Reference contains nucleotide sequences (coding
    only, eg curated transcriptome) 3: Reference contains protein sequences (UniProt
    or other source) 4: Development tests'
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- paladin
- index
