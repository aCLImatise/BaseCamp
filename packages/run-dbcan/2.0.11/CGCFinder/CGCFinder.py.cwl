class: CommandLineTool
id: CGCFinder.py.cwl
inputs:
- id: in_distance
  doc: The distance allowed between two signature genes
  type: string?
  inputBinding:
    prefix: --distance
- id: in_sig_genes
  doc: "{all,tp,tf,stp,tp+tf,tp+stp,tf+stp}, -s {all,tp,tf,stp,tp+tf,tp+stp,tf+stp}\n\
    Signature genes types required. all=CAZymes,TC,TF;\ntp=CAZymes,TC; tf=CAZymes,TF"
  type: boolean?
  inputBinding:
    prefix: --siggenes
- id: in_output
  doc: "Output file name\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- CGCFinder.py
