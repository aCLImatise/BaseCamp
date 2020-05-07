class: CommandLineTool
id: igdiscover_init.cwl
inputs:
- id: database
  doc: Directory with V.fasta, D.fasta and J.fasta files. If not given, a dialog is
    shown.
  type: File
  inputBinding:
    prefix: --database
- id: single_reads
  doc: File with single-end reads (.fasta.gz or .fastq.gz)
  type: string
  inputBinding:
    prefix: --single-reads
- id: read_s1
  doc: First paired-end read file. The second is found automatically. Must be a .fastq.gz
    file. If not given, a dialog is shown.
  type: string
  inputBinding:
    prefix: --reads1
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- init
