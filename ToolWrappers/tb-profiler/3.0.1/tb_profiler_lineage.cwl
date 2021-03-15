class: CommandLineTool
id: tb_profiler_lineage.cwl
inputs:
- id: in_bam
  doc: "BAM file. Make sure it has been generated using the\nH37Rv genome (GCA_000195955.2)\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --bam
- id: in_prefix
  doc: 'Sample prefix (default: tbprofiler)'
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_out_fmt
  doc: 'Output format (default: json)'
  type: string?
  inputBinding:
    prefix: --outfmt
- id: in_snps
  doc: 'Sample prefix (default: False)'
  type: boolean?
  inputBinding:
    prefix: --snps
- id: in_caller
  doc: 'Variant caller (default: bcftools)'
  type: string?
  inputBinding:
    prefix: --caller
- id: in_db
  doc: 'Mutation panel name (default: tbdb)'
  type: string?
  inputBinding:
    prefix: --db
- id: in_external_db
  doc: "Path to db files prefix (overrides \"--db\" parameter)\n(default: None)"
  type: File?
  inputBinding:
    prefix: --external_db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tb-profiler:3.0.1--pypyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tb-profiler
- lineage
