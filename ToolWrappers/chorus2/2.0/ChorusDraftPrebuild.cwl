class: CommandLineTool
id: ChorusDraftPrebuild.cwl
inputs:
- id: in_input
  doc: Fasta format input file contains short sequences
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Fasta format output file with combined long sequences\nfor speeding up oligo\
    \ search. (default: output.fa)\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Fasta format output file with combined long sequences\nfor speeding up oligo\
    \ search. (default: output.fa)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- ChorusDraftPrebuild
