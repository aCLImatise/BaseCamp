class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gaas_fastq_guessMyFormat.pl.cwl
inputs:
- id: fast_q
  doc: 'STRING: Input fastq file that will be read.'
  type: string
  inputBinding:
    prefix: --fastq
- id: advanced_mode_can
  doc: Advanced mode. Can be used to find exactly which scoring system it is.
  type: boolean
  inputBinding:
    prefix: -a
- id: set_max_time
  doc: Set the max search time in seconds to be used when using -a. Default is 60.
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fastq_guessMyFormat.pl
