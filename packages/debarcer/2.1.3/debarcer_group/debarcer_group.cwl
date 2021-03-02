class: CommandLineTool
id: debarcer_group.cwl
inputs:
- id: in_outdir
  doc: Output directory where subdirectories are created
  type: Directory?
  inputBinding:
    prefix: --Outdir
- id: in_region
  doc: "Region coordinates to search for UMIs. chrN:posA-posB.\nposA and posB are\
    \ 1-based included"
  type: long?
  inputBinding:
    prefix: --Region
- id: in_bam_file
  doc: Path to the BAM file
  type: File?
  inputBinding:
    prefix: --Bamfile
- id: in_config
  doc: Path to the config file
  type: File?
  inputBinding:
    prefix: --Config
- id: in_distance
  doc: "Hamming distance threshold for connecting parent-\nchildren umis"
  type: string?
  inputBinding:
    prefix: --Distance
- id: in_position
  doc: Umi position threshold for grouping umis together
  type: string?
  inputBinding:
    prefix: --Position
- id: in_ignore
  doc: "Keep the most abundant family and ignore families at\nother positions within\
    \ each group. Default is False"
  type: string?
  inputBinding:
    prefix: --Ignore
- id: in_truncate
  doc: "Discard reads overlapping with the genomic region if\nTrue. Default is False"
  type: string?
  inputBinding:
    prefix: --Truncate
- id: in_separator
  doc: "String separating the UMI from the remaining of the\nread name"
  type: string?
  inputBinding:
    prefix: --Separator
- id: in_read_count
  doc: "Minimum number of reads in region required for\ngrouping. Default is 0\n"
  type: long?
  inputBinding:
    prefix: --ReadCount
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory where subdirectories are created
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/debarcer:2.1.3--py_0
cwlVersion: v1.1
baseCommand:
- debarcer
- group
