class: CommandLineTool
id: igdiscover_init.cwl
inputs:
- id: in_database
  doc: "Directory with V.fasta, D.fasta and J.fasta files. If\nnot given, a dialog\
    \ is shown."
  type: File?
  inputBinding:
    prefix: --database
- id: in_single_reads
  doc: File with single-end reads (.fasta.gz or .fastq.gz)
  type: File?
  inputBinding:
    prefix: --single-reads
- id: in_reads_one
  doc: "First paired-end read file. The second is found\nautomatically. Must be a\
    \ .fastq.gz file. If not given,\na dialog is shown.\n"
  type: long?
  inputBinding:
    prefix: --reads1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- init
