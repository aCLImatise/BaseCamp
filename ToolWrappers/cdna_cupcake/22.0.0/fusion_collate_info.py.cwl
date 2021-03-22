class: CommandLineTool
id: fusion_collate_info.py.cwl
inputs:
- id: in_cds_gff
  doc: CDS GFF filename (optional)
  type: File?
  inputBinding:
    prefix: --cds_gff
- id: in_total_fl_count
  doc: "(optional) Total FL count used to normalize fusion\ncounts"
  type: string?
  inputBinding:
    prefix: --total_fl_count
- id: in_config
  doc: (optional) Additional information to include in the
  type: string?
  inputBinding:
    prefix: --config
- id: in_min_fl_count
  doc: 'Minimum FL count (default: 2)'
  type: long?
  inputBinding:
    prefix: --min_fl_count
- id: in_min_breakpoint_dist_kb
  doc: 'Minimum breakpoint distance, in kb (default: 10[kb])'
  type: long?
  inputBinding:
    prefix: --min_breakpoint_dist_kb
- id: in_include_mt_genes
  doc: 'Include Mt genes (default: off)'
  type: boolean?
  inputBinding:
    prefix: --include_Mt_genes
- id: in_fusion_prefix
  doc: 'Prefix for fusion files (ex: my.fusion)'
  type: string
  inputBinding:
    position: 0
- id: in_class_filename
  doc: SQANTI3 classification filename
  type: string
  inputBinding:
    position: 1
- id: in_gtf_filename
  doc: GTF annotation used as input to SQANTI3 classification
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: --genome GENOME       (optional) Reference genome
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- fusion_collate_info.py
