class: CommandLineTool
id: msaboot.cwl
inputs:
- id: in_input
  doc: The file name of the FASTA file to be used as input.
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "The file name of the bootstrapped alignment data\noutput, stored in relaxed\
    \ PHYLIP format."
  type: File?
  inputBinding:
    prefix: --output
- id: in_number
  doc: "The number of bootstrap replicates.\n"
  type: long?
  inputBinding:
    prefix: --number
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The file name of the bootstrapped alignment data\noutput, stored in relaxed\
    \ PHYLIP format."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- msaboot
