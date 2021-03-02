class: CommandLineTool
id: haphpipe_join_reads.cwl
inputs:
- id: in_fq_one
  doc: Fastq file with read 1
  type: long?
  inputBinding:
    prefix: --fq1
- id: in_fq_two
  doc: Fastq file with read 1
  type: long?
  inputBinding:
    prefix: --fq2
- id: in_outdir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_min_overlap
  doc: "The minimum required overlap length between two reads\nto provide a confident\
    \ overlap. (default: 10)"
  type: long?
  inputBinding:
    prefix: --min_overlap
- id: in_max_overlap
  doc: "Maximum overlap length expected in approximately 90\npct of read pairs, longer\
    \ overlaps are penalized."
  type: long?
  inputBinding:
    prefix: --max_overlap
- id: in_allow_out_ies
  doc: "Also try combining read pairs in the \"outie\"\norientation (default: False)"
  type: boolean?
  inputBinding:
    prefix: --allow_outies
- id: in_encoding
  doc: Quality score encoding
  type: string?
  inputBinding:
    prefix: --encoding
- id: in_n_cpu
  doc: Number of CPU to use
  type: long?
  inputBinding:
    prefix: --ncpu
- id: in_keep_tmp
  doc: 'Keep temporary directory (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep_tmp
- id: in_quiet
  doc: "Do not write output to console (silence stdout and\nstderr) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_log_file
  doc: Append console output to this file
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_log_file
  doc: Append console output to this file
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/haphpipe:1.0.3--py_0
cwlVersion: v1.1
baseCommand:
- haphpipe
- join_reads
