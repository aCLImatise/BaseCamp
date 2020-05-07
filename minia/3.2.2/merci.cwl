class: CommandLineTool
id: merci.cwl
inputs:
- id: verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: nb_cores
  doc: "(1 arg) :    number of threads  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: km_er_size
  doc: '(1 arg) :    kmer size'
  type: boolean
  inputBinding:
    prefix: -kmer-size
- id: assembly
  doc: '(1 arg) :    assembly to improve'
  type: boolean
  inputBinding:
    prefix: -assembly
- id: reads
  doc: '(1 arg) :    input reads (fasta/fastq/compressed)'
  type: boolean
  inputBinding:
    prefix: -reads
outputs: []
cwlVersion: v1.1
baseCommand:
- merci
