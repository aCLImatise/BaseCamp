class: CommandLineTool
id: simplify_fasta.cwl
inputs:
- id: in_specify_name_input
  doc: Specify the name of the input file
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_specify_name_output
  doc: Specify the name for the output file
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_name_output
  doc: Specify the name for the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_specify_name_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/binsanity:0.5.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- simplify-fasta
