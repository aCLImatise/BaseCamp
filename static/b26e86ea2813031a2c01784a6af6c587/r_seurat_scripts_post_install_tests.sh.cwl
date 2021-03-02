class: CommandLineTool
id: r_seurat_scripts_post_install_tests.sh.cwl
inputs:
- id: in_r_seurat_workflow_post_install_tests_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_action
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_use_existing_outputs
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seurat-scripts:0.0.9--0
cwlVersion: v1.1
baseCommand:
- r-seurat-scripts-post-install-tests.sh
