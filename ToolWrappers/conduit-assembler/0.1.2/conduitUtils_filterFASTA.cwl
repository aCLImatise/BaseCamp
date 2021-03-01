class: CommandLineTool
id: conduitUtils_filterFASTA.cwl
inputs:
- id: in_minimum_number_support
  doc: "(5)\nMinimum number of reads that must support an isoform for it to be reported\
    \ in the filtered FASTA\n"
  type: boolean?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/conduit-assembler:0.1.2--hbeb723e_0
cwlVersion: v1.1
baseCommand:
- conduitUtils
- filterFASTA
