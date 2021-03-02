class: CommandLineTool
id: iu_fastq_to_fasta.cwl
inputs:
- id: in_number_of_sequences
  doc: Number of sequences to be converted
  type: long?
  inputBinding:
    prefix: --number-of-sequences
- id: in_output
  doc: 'FASTA output (default: [-i]-FASTA-[-n]'
  type: string?
  inputBinding:
    prefix: --output
- id: in_rev_comp
  doc: "When set, during the conversion reads will be reverse\ncomplemented.\n"
  type: boolean?
  inputBinding:
    prefix: --rev-comp
- id: in_input
  doc: FASTQ file to be converted
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- iu-fastq-to-fasta
