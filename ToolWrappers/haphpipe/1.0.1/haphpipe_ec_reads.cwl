class: CommandLineTool
id: haphpipe_ec_reads.cwl
inputs:
- id: in_fq_one
  doc: Fastq file with read 1
  type: long?
  inputBinding:
    prefix: --fq1
- id: in_fq_two
  doc: Fastq file with read 2
  type: long?
  inputBinding:
    prefix: --fq2
- id: in_f_qu
  doc: Fastq file with unpaired reads
  type: File?
  inputBinding:
    prefix: --fqU
- id: in_outdir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_n_cpu
  doc: 'Number of CPU to use (default: 1)'
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
hints: []
cwlVersion: v1.1
baseCommand:
- haphpipe
- ec_reads
