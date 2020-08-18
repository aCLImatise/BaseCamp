class: CommandLineTool
id: ../../../seq2HLA.cwl
inputs:
- id: one
  doc: 'File name of #1 mates (uncompressed or gzipped fastq)'
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: 'File name of #2 mates (uncompressed or gzipped fastq)'
  type: string
  inputBinding:
    prefix: '-2'
- id: run_name
  doc: Name of this HLA typing run. Wil be used throughout this process as part of
    the name of the newly created files.
  type: string
  inputBinding:
    prefix: --runName
- id: threads
  doc: 'Bowtie option: Launch <int> parallel search threads. Default (seq2HLA): 6'
  type: string
  inputBinding:
    prefix: --threads
- id: trim_three
  doc: "Bowtie option: -3 <int> trims <int> bases from the low quality 3' end of each\
    \ read. Default: 0"
  type: string
  inputBinding:
    prefix: --trim3
outputs: []
cwlVersion: v1.1
baseCommand:
- seq2HLA
