class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pvacseq_install_vep_plugin.cwl
inputs:
- id: vep_plugins_path
  doc: Path to your VEP_plugins directory
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pvacseq
- install_vep_plugin
