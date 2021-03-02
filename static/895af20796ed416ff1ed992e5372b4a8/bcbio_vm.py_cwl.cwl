class: CommandLineTool
id: bcbio_vm.py_cwl.cwl
inputs:
- id: in_system_config
  doc: "Global YAML configuration file specifying system\ndetails. Defaults to installed\
    \ bcbio_system.yaml."
  type: File?
  inputBinding:
    prefix: --systemconfig
- id: in_add_container_tag
  doc: "Add a container revision tag to CWL ('quay_lookup`\nretrieves lates from quay.io)\n"
  type: string?
  inputBinding:
    prefix: --add-container-tag
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- cwl
