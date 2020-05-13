class: CommandLineTool
id: liftUp.cwl
inputs:
- id: no_sort
  doc: "'t sort bed, gff, or gdup files, to save memory"
  type: string
  inputBinding:
    prefix: -nosort
- id: gap_size
  doc: contig gapsize from default
  type: string
  inputBinding:
    prefix: -gapsize
- id: ignore_versions
  doc: version number in sequence ids of input files
  type: string
  inputBinding:
    prefix: -ignoreVersions
- id: ext_gene_pred
  doc: extended genePred
  type: string
  inputBinding:
    prefix: -extGenePred
outputs: []
cwlVersion: v1.1
baseCommand:
- liftUp
