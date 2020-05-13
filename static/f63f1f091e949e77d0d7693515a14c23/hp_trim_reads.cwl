class: CommandLineTool
id: hp_trim_reads.cwl
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
- id: adapter_file
  doc: Adapter file
  type: string
  inputBinding:
    prefix: --adapter_file
- id: trimmers
  doc: "Trim commands for trimmomatic (default: ['LEADING:3', 'TRAILING:3', 'SLIDINGWINDOW:4:15',\
    \ 'MINLEN:36'])"
  type: string
  inputBinding:
    prefix: --trimmers
- id: encoding
  doc: '{Phred+33,Phred+64} Quality score encoding'
  type: boolean
  inputBinding:
    prefix: --encoding
- id: n_cpu
  doc: 'Number of CPU to use (default: 1)'
  type: string
  inputBinding:
    prefix: --ncpu
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
- hp_trim_reads
