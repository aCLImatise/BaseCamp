class: CommandLineTool
id: hp_sample_reads.cwl
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
  doc: 'Output directory (default: .)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_n_reads
  doc: "Number of reads to sample. If greater than the number of\nreads in file, all\
    \ reads will be sampled."
  type: long?
  inputBinding:
    prefix: --nreads
- id: in_frac
  doc: "Fraction of reads to sample, between 0 and 1. Each read\nhas [frac] probability\
    \ of being sampled, so number of\nsampled reads is not precisely [frac * num_reads]."
  type: long?
  inputBinding:
    prefix: --frac
- id: in_seed
  doc: Seed for random number generator.
  type: long?
  inputBinding:
    prefix: --seed
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
  doc: 'Output directory (default: .)'
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
- hp_sample_reads
