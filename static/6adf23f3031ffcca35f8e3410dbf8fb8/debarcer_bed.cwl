class: CommandLineTool
id: debarcer_bed.cwl
inputs:
- id: in_bam_file
  doc: Path to the BAM file
  type: File?
  inputBinding:
    prefix: --Bamfile
- id: in_bed_file
  doc: Path to the output bed file
  type: File?
  inputBinding:
    prefix: --Bedfile
- id: in_min_cov
  doc: "Minimum read depth value at all positions in genomic\ninterval"
  type: long?
  inputBinding:
    prefix: --MinCov
- id: in_region_size
  doc: Minimum length of the genomic interval (in bp)
  type: long?
  inputBinding:
    prefix: --RegionSize
- id: in_maxdepth
  doc: Maximum read depth. Default is 1000000
  type: long?
  inputBinding:
    prefix: --MaxDepth
- id: in_ignore_orphans
  doc: "Ignore orphans (paired reads that are not in a proper\npair). Default is False,\
    \ becomes True if used"
  type: boolean?
  inputBinding:
    prefix: --IgnoreOrphans
- id: in_stepper
  doc: "Filter or include reads in the pileup. Options all:\nskip reads with BAM_FUNMAP,\
    \ BAM_FSECONDARY,\nBAM_FQCFAIL, BAM_FDUP flags, nofilter: uses every\nsingle read\
    \ turning off any filtering\n"
  type: string?
  inputBinding:
    prefix: --Stepper
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bed_file
  doc: Path to the output bed file
  type: File?
  outputBinding:
    glob: $(inputs.in_bed_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/debarcer:2.1.3--py_0
cwlVersion: v1.1
baseCommand:
- debarcer
- bed
