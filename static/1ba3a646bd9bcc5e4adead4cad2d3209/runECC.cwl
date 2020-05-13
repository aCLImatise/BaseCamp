class: CommandLineTool
id: runECC.sh.cwl
inputs:
- id: ins
  doc: single read filenames (comma separated fasta/fastq/fastq.gz files).
  type: boolean
  inputBinding:
    prefix: -inS
- id: in1
  doc: forward paired read filename (single fasta/fastq/fastq.gz file).
  type: boolean
  inputBinding:
    prefix: -in1
- id: in2
  doc: reverse paired read filename (single fasta/fastq/fastq.gz file).
  type: boolean
  inputBinding:
    prefix: -in2
- id: inp
  doc: interleaved paired read filenames (comma separated fasta/fastq/fastq.gz files).
  type: boolean
  inputBinding:
    prefix: -inP
- id: d
  doc: 'output directory path.(DEFAULT: current directory)'
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: 'output filename prefix.(DEFAULT: disco)'
  type: boolean
  inputBinding:
    prefix: -o
- id: m
  doc: 'maximum memory to be used (DEFAULT: 15 GB).'
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: 'number of threads (DEFAULT: 8).'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- runECC.sh
