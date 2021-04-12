class: CommandLineTool
id: safety_not_guaranteed.py.cwl
inputs:
- id: in_output
  doc: "Write output FASTQ reads to this file. If not given,\nwill print to stdout."
  type: File?
  inputBinding:
    prefix: --output
- id: in_phred_score
  doc: "The quality score to give to all bases. There is no\nmeaningful quality score\
    \ we can automatically give, so\nyou will have to specify an artificial one. A\
    \ good\nchoice is 40, the maximum score normally output by\nsequencers."
  type: long?
  inputBinding:
    prefix: --phred-score
- id: in_qual_format
  doc: "FASTQ quality score format. Sanger scores are assumed\nto begin at '33' (!).\
    \ Default: sanger."
  type: string?
  inputBinding:
    prefix: --qual-format
- id: in_to_fast_a
  doc: "Convert FASTQ to FASTA instead. This assumes the input\nis FASTQ."
  type: boolean?
  inputBinding:
    prefix: --to-fasta
- id: in_log
  doc: "Print log messages to this file instead of to stderr.\nWarning: Will overwrite\
    \ the file."
  type: File?
  inputBinding:
    prefix: --log
- id: in_reads_dot_fa
  doc: Input FASTA reads. Omit to read from stdin.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Write output FASTQ reads to this file. If not given,\nwill print to stdout."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0
cwlVersion: v1.1
baseCommand:
- safety-not-guaranteed.py
