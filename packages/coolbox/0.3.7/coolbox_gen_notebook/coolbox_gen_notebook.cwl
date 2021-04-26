class: CommandLineTool
id: coolbox_gen_notebook.cwl
inputs:
- id: in_notes
  doc: "=\e[4mNOTES\e[0m\nDefault: True\nGenerate markdown notes in notebook or not."
  type: boolean?
  inputBinding:
    prefix: --notes
- id: in_fig_save
  doc: "=\e[4mFIGSAVE\e[0m\nDefault: True\nGenerate codes for saving figure or not."
  type: boolean?
  inputBinding:
    prefix: --figsave
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coolbox:0.3.7--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- coolbox
- gen_notebook
