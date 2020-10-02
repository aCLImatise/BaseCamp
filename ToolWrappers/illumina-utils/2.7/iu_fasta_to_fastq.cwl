class: CommandLineTool
id: iu_fasta_to_fastq.cwl
inputs:
- id: in_number_of_sequences
  doc: "Number of sequences to be converted (by default the\neverything will be processed)"
  type: long
  inputBinding:
    prefix: --number-of-sequences
- id: in_output
  doc: 'FASTQ output file name (default: [-i]-FASTA-[-n]'
  type: File
  inputBinding:
    prefix: --output
- id: in_rev_comp
  doc: "When set, during the conversion reads will be reverse\ncomplemented.\n"
  type: boolean
  inputBinding:
    prefix: --rev-comp
- id: in_input
  doc: FASTA file to be converted
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'FASTQ output file name (default: [-i]-FASTA-[-n]'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- iu-fasta-to-fastq
