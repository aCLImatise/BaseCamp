class: CommandLineTool
id: trim_fastq.pl.cwl
inputs:
- id: in_fast_q
  doc: Fastq file for trimming
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_up
  doc: Number of nucleotides to trim from read / quality string start
  type: boolean?
  inputBinding:
    prefix: --up
- id: in_down
  doc: Number of nucleotides to trim from read / quality string end
  type: boolean?
  inputBinding:
    prefix: --down
- id: in_a_five
  doc: "Sequence of 5' adapter to trim from the left side of the reads. This\noption\
    \ and -u / -d are mutually exclusive"
  type: boolean?
  inputBinding:
    prefix: --a5
- id: in_man
  doc: "Prints the manual page and exits\n"
  type: boolean?
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- trim_fastq.pl
