class: CommandLineTool
id: amptk_stats.cwl
inputs:
- id: in_biom
  doc: Input BIOM file with taxonomy and metadata (Required)
  type: boolean?
  inputBinding:
    prefix: --biom
- id: in_tree
  doc: Phylogeny of OTUs (from amptk taxonomy) (Required)
  type: boolean?
  inputBinding:
    prefix: --tree
- id: in_distance
  doc: 'Distance metric. Default: raupcrick [raupcrick,jaccard,bray,unifrac,wunifrac]'
  type: boolean?
  inputBinding:
    prefix: --distance
- id: in_out
  doc: 'Output base name. Default: amptk_stats'
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_ignore_otus
  doc: Drop OTUs from table before running stats
  type: boolean?
  inputBinding:
    prefix: --ignore_otus
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/amptk:1.5.1--py_1
cwlVersion: v1.1
baseCommand:
- amptk
- stats
