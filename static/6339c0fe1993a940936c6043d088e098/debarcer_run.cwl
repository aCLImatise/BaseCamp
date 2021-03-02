class: CommandLineTool
id: debarcer_run.cwl
inputs:
- id: in_outdir
  doc: Output directory where subdirectories are created
  type: Directory?
  inputBinding:
    prefix: --Outdir
- id: in_config
  doc: Path to the config file
  type: File?
  inputBinding:
    prefix: --Config
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
- id: in_fam_size
  doc: "Comma-separated list of minimum umi family size to\ncollapase on"
  type: long?
  inputBinding:
    prefix: --Famsize
- id: in_bed_file
  doc: Path to the bed file
  type: File?
  inputBinding:
    prefix: --Bedfile
- id: in_count_threshold
  doc: Base count threshold in pileup column
  type: string?
  inputBinding:
    prefix: --CountThreshold
- id: in_percent_threshold
  doc: Base percent threshold in pileup column
  type: string?
  inputBinding:
    prefix: --PercentThreshold
- id: in_position
  doc: Umi position threshold for grouping umis together
  type: string?
  inputBinding:
    prefix: --Position
- id: in_distance
  doc: "Hamming distance threshold for connecting parent-\nchildren umis"
  type: string?
  inputBinding:
    prefix: --Distance
- id: in_ref_threshold
  doc: "A position is considered variable of reference\nfrequency is <= ref_threshold"
  type: string?
  inputBinding:
    prefix: --RefThreshold
- id: in_alternative_threshold
  doc: "Variable position is labeled PASS if allele frequency\n>= alt_threshold"
  type: string?
  inputBinding:
    prefix: --AlternativeThreshold
- id: in_filter_threshold
  doc: Minimum number of reads to pass alternative variants
  type: long?
  inputBinding:
    prefix: --FilterThreshold
- id: in_maxdepth
  doc: Maximum read depth. Default is 1000000
  type: long?
  inputBinding:
    prefix: --MaxDepth
- id: in_truncate
  doc: "Only pileup columns in the exact region specificied\nare returned. Default\
    \ is False, becomes True is used"
  type: boolean?
  inputBinding:
    prefix: --Truncate
- id: in_ignore_orphans
  doc: "Ignore orphans (paired reads that are not in a proper\npair). Default is False,\
    \ becomes True if used"
  type: boolean?
  inputBinding:
    prefix: --IgnoreOrphans
- id: in_ignore
  doc: "Keep the most abundant family and ignore families at\nother positions within\
    \ each group. Default is False,\nbecomes True if used"
  type: boolean?
  inputBinding:
    prefix: --Ignore
- id: in_merge
  doc: "Merge data, json and consensus files respectively into\na 1 single file. Default\
    \ is True, becomes False if\nused"
  type: boolean?
  inputBinding:
    prefix: --Merge
- id: in_plot
  doc: "Generate figure plots. Default is True, becomes False\nif used"
  type: boolean?
  inputBinding:
    prefix: --Plot
- id: in_report
  doc: Generate report. Default is True, becomes False if
  type: boolean?
  inputBinding:
    prefix: --Report
- id: in_extension
  doc: "Figure format. Does not generate a report if pdf, even\nwith -r True. Default\
    \ is png"
  type: string?
  inputBinding:
    prefix: --Extension
- id: in_sample
  doc: "Sample name to appear to report. Optional, use Output\ndirectory basename\
    \ if not provided"
  type: Directory?
  inputBinding:
    prefix: --Sample
- id: in_project
  doc: Project for submitting jobs on Univa
  type: string?
  inputBinding:
    prefix: --Project
- id: in_memory
  doc: "Requested memory for submitting jobs to SGE. Default\nis 20g"
  type: long?
  inputBinding:
    prefix: --Memory
- id: in_my_python
  doc: "Path to python. Default is /.mounts/labs/PDE/Modules/s\nw/python/Python-3.6.4/bin/python3.6"
  type: File?
  inputBinding:
    prefix: --MyPython
- id: in_my_debar_cer
  doc: "Path to the file debarcer.py. Default is /.mounts/labs\n/PDE/Modules/sw/python/Python-3.6.4/lib/python3.6/site\n\
    -packages/debarcer/debarcer.py"
  type: File?
  inputBinding:
    prefix: --MyDebarcer
- id: in_min_cov
  doc: "Minimum coverage value. Values below are plotted in\nred"
  type: long?
  inputBinding:
    prefix: --MinCov
- id: in_min_ratio
  doc: "Minimum children to parent umi ratio. Values below are\nplotted in red"
  type: long?
  inputBinding:
    prefix: --MinRatio
- id: in_minum_is
  doc: Minimum umi count. Values below are plotted in red
  type: string?
  inputBinding:
    prefix: --MinUmis
- id: in_min_children
  doc: "Minimum children umi count. Values below are plotted\nin red"
  type: long?
  inputBinding:
    prefix: --MinChildren
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
    \ are not used in the\nconsensus. Default is 25"
  type: long?
  inputBinding:
    prefix: --Quality
- id: in_read_count
  doc: "Minimum number of reads in region required for\ngrouping. Default is 0\n"
  type: long?
  inputBinding:
    prefix: --ReadCount
- id: in_used
  doc: -cl, --Call           Convert consensus files to VCF format. Default is
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory where subdirectories are created
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_sample
  doc: "Sample name to appear to report. Optional, use Output\ndirectory basename\
    \ if not provided"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_sample)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/debarcer:2.1.3--py_0
cwlVersion: v1.1
baseCommand:
- debarcer
- run
