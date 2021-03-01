class: CommandLineTool
id: pvacseq_install_vep_plugin.cwl
inputs:
- id: in_vep_plugins_path
  doc: Path to your VEP_plugins directory
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
- pvacseq
- install_vep_plugin
