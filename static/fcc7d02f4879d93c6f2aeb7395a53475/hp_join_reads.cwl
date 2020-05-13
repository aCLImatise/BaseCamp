class: CommandLineTool
id: hp_join_reads.cwl
inputs:
- id: fq1
  doc: Fastq file with read 1
  type: string
  inputBinding:
    prefix: --fq1
- id: fq2
  doc: Fastq file with read 1
  type: string
  inputBinding:
    prefix: --fq2
- id: outdir
  doc: Output directory
  type: string
  inputBinding:
    prefix: --outdir
- id: min_overlap
  doc: 'The minimum required overlap length between two reads to provide a confident
    overlap. (default: 10)'
  type: long
  inputBinding:
    prefix: --min_overlap
- id: max_overlap
  doc: Maximum overlap length expected in approximately 90 pct of read pairs, longer
    overlaps are penalized.
  type: long
  inputBinding:
    prefix: --max_overlap
- id: allow_out_ies
  doc: 'Also try combining read pairs in the "outie" orientation (default: False)'
  type: boolean
  inputBinding:
    prefix: --allow_outies
- id: encoding
  doc: Quality score encoding
  type: string
  inputBinding:
    prefix: --encoding
- id: n_cpu
  doc: Number of CPU to use
  type: string
  inputBinding:
    prefix: --ncpu
- id: keep_tmp
  doc: 'Keep temporary directory (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: quiet
  doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: log_file
  doc: Append console output to this file
  type: string
  inputBinding:
    prefix: --logfile
- id: debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- hp_join_reads
