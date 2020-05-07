class: CommandLineTool
id: hp_sample_reads.cwl
inputs:
- id: fq1
  doc: Fastq file with read 1
  type: string
  inputBinding:
    prefix: --fq1
- id: fq2
  doc: Fastq file with read 2
  type: string
  inputBinding:
    prefix: --fq2
- id: f_qu
  doc: Fastq file with unpaired reads
  type: string
  inputBinding:
    prefix: --fqU
- id: outdir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: n_reads
  doc: Number of reads to sample. If greater than the number of reads in file, all
    reads will be sampled.
  type: string
  inputBinding:
    prefix: --nreads
- id: frac
  doc: Fraction of reads to sample, between 0 and 1. Each read has [frac] probability
    of being sampled, so number of sampled reads is not precisely [frac * num_reads].
  type: string
  inputBinding:
    prefix: --frac
- id: seed
  doc: Seed for random number generator.
  type: string
  inputBinding:
    prefix: --seed
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
- hp_sample_reads
