class: CommandLineTool
id: kounta.cwl
inputs:
- id: fof_n
  doc: file     File of filenames to process
  type: boolean
  inputBinding:
    prefix: --fofn
- id: km_er
  doc: int      k-mer length [25]
  type: boolean
  inputBinding:
    prefix: --kmer
- id: min_freq
  doc: int      Min k-mer frequency (FASTQ only) [3]
  type: boolean
  inputBinding:
    prefix: --minfreq
- id: out
  doc: file     Output matrix file
  type: boolean
  inputBinding:
    prefix: --out
- id: ram
  doc: int      RAM in gigabytes to use [4]
  type: boolean
  inputBinding:
    prefix: --ram
- id: tempdir
  doc: string   Fast working directory [auto]
  type: boolean
  inputBinding:
    prefix: --tempdir
- id: threads
  doc: int      Threads to use [1]
  type: boolean
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- kounta
