class: CommandLineTool
id: trim_fastq.pl.cwl
inputs:
- id: fast_q
  doc: Fastq file for trimming
  type: boolean
  inputBinding:
    prefix: --fastq
- id: up
  doc: Number of nucleotides to trim from read / quality string start
  type: boolean
  inputBinding:
    prefix: --up
- id: down
  doc: Number of nucleotides to trim from read / quality string end
  type: boolean
  inputBinding:
    prefix: --down
- id: a5
  doc: Sequence of 5' adapter to trim from the left side of the reads. This option
    and -u / -d are mutually exclusive
  type: boolean
  inputBinding:
    prefix: --a5
- id: man
  doc: Prints the manual page and exits
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- trim_fastq.pl
