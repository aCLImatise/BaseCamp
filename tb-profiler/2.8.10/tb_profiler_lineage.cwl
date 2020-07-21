class: CommandLineTool
id: ../../../tb_profiler_lineage.cwl
inputs:
- id: bam
  doc: 'BAM file. Make sure it has been generated using the H37Rv genome (GCA_000195955.2)
    (default: None)'
  type: string
  inputBinding:
    prefix: --bam
- id: prefix
  doc: 'Sample prefix (default: tbprofiler)'
  type: string
  inputBinding:
    prefix: --prefix
- id: out_fmt
  doc: 'Output format (default: json)'
  type: string
  inputBinding:
    prefix: --outfmt
- id: snps
  doc: 'Sample prefix (default: False)'
  type: boolean
  inputBinding:
    prefix: --snps
- id: caller
  doc: 'Variant caller (default: bcftools)'
  type: string
  inputBinding:
    prefix: --caller
- id: db
  doc: 'Mutation panel name (default: tbdb)'
  type: string
  inputBinding:
    prefix: --db
- id: external_db
  doc: 'Path to db files prefix (overrides "--db" parameter) (default: None)'
  type: string
  inputBinding:
    prefix: --external_db
outputs: []
cwlVersion: v1.1
baseCommand:
- tb-profiler
- lineage
