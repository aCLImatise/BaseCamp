class: CommandLineTool
id: MergeSampleDensitys.cwl
inputs:
- id: in_input
  doc: "Density files in txt format separated by comma. e.g.\ntest1_dataframe.txt,test2_dataframe.txt"
  type: long?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Output filename.[required]\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output filename.[required]\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- MergeSampleDensitys
