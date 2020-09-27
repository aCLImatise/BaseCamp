class: CommandLineTool
id: hp_trim_reads.cwl
inputs:
- id: in_fq_one
  doc: Fastq file with read 1
  type: long
  inputBinding:
    prefix: --fq1
- id: in_fq_two
  doc: Fastq file with read 1
  type: long
  inputBinding:
    prefix: --fq2
- id: in_f_qu
  doc: Fastq file with unpaired reads
  type: File
  inputBinding:
    prefix: --fqU
- id: in_outdir
  doc: 'Output directory (default: .)'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_adapter_file
  doc: Adapter file
  type: File
  inputBinding:
    prefix: --adapter_file
- id: in_trimmers
  doc: "Trim commands for trimmomatic (default: ['LEADING:3',\n'TRAILING:3', 'SLIDINGWINDOW:4:15',\
    \ 'MINLEN:36'])"
  type: long
  inputBinding:
    prefix: --trimmers
- id: in_encoding
  doc: "{Phred+33,Phred+64}\nQuality score encoding"
  type: boolean
  inputBinding:
    prefix: --encoding
- id: in_n_cpu
  doc: 'Number of CPU to use (default: 1)'
  type: long
  inputBinding:
    prefix: --ncpu
- id: in_quiet
  doc: "Do not write output to console (silence stdout and\nstderr) (default: False)"
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_log_file
  doc: Append console output to this file
  type: File
  inputBinding:
    prefix: --logfile
- id: in_debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory (default: .)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_log_file
  doc: Append console output to this file
  type: File
  outputBinding:
    glob: $(inputs.in_log_file)
cwlVersion: v1.1
baseCommand:
- hp_trim_reads
