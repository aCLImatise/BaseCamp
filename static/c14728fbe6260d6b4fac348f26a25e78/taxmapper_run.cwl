class: CommandLineTool
id: taxmapper_run.cwl
inputs:
- id: database
  doc: Database path for RAPseach database index
  type: string
  inputBinding:
    prefix: --database
- id: folder
  doc: Folder with reads in fasta or fastq format
  type: Directory
  inputBinding:
    prefix: --folder
- id: reverse
  doc: 'Reads also contain reverse read, [default: True]'
  type: string
  inputBinding:
    prefix: --reverse
- id: suffix
  doc: 'Suffix of paired end reads, [default: "_R1,_R2"]'
  type: string
  inputBinding:
    prefix: --suffix
- id: m
  doc: Maximum read length
  type: long
  inputBinding:
    prefix: -m
- id: out
  doc: 'Output folder, [default: "results"]'
  type: string
  inputBinding:
    prefix: --out
- id: threads
  doc: 'Number of threads, [default: 4]'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- taxmapper
- run
