class: CommandLineTool
id: debarcer_collapse.cwl
inputs:
- id: in_config
  doc: Path to the config file
  type: File?
  inputBinding:
    prefix: --Config
- id: in_outdir
  doc: Output directory where subdirectories are created
  type: Directory?
  inputBinding:
    prefix: --Outdir
- id: in_bam_file
  doc: Path to the BAM file
  type: File?
  inputBinding:
    prefix: --Bamfile
- id: in_reference
  doc: Path to the refeence genome
  type: File?
  inputBinding:
    prefix: --Reference
- id: in_region
  doc: "Region coordinates to search for UMIs. chrN:posA-posB.\nposA and posB are\
    \ 1-based included"
  type: long?
  inputBinding:
    prefix: --Region
- id: in_umi
  doc: Path to the .umis file
  type: File?
  inputBinding:
    prefix: --Umi
- id: in_fam_size
  doc: "Comma-separated list of minimum umi family size to\ncollapase on"
  type: long?
  inputBinding:
    prefix: --Famsize
- id: in_count_threshold
  doc: Base count threshold in pileup column
  type: string?
  inputBinding:
    prefix: --CountThreshold
- id: in_percent_threshold
  doc: Majority rule consensus threshold in pileup column
  type: string?
  inputBinding:
    prefix: --PercentThreshold
- id: in_position
  doc: Umi position threshold for grouping umis together
  type: string?
  inputBinding:
    prefix: --Position
- id: in_maxdepth
  doc: Maximum read depth. Default is 1000000
  type: long?
  inputBinding:
    prefix: --MaxDepth
- id: in_truncate
  doc: "If truncate is True and a region is given, only pileup\ncolumns in the exact\
    \ region specificied are returned.\nDefault is False"
  type: string?
  inputBinding:
    prefix: --Truncate
- id: in_ignore_orphans
  doc: "Ignore orphans (paired reads that are not in a proper\npair). Default is False"
  type: string?
  inputBinding:
    prefix: --IgnoreOrphans
- id: in_stepper
  doc: "Filter or include reads in the pileup. Options all:\nskip reads with BAM_FUNMAP,\
    \ BAM_FSECONDARY,\nBAM_FQCFAIL, BAM_FDUP flags, nofilter: uses every\nsingle read\
    \ turning off any filtering"
  type: string?
  inputBinding:
    prefix: --Stepper
- id: in_separator
  doc: "String separating the UMI from the remaining of the\nread name"
  type: string?
  inputBinding:
    prefix: --Separator
- id: in_quality
  doc: "Base quality score threshold. Bases with quality\nscores below the threshold\
    \ are not used in the\nconsensus. Default is 25\n"
  type: long?
  inputBinding:
    prefix: --Quality
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
- collapse
