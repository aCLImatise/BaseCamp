class: CommandLineTool
id: ../../../bioconductor_scater_scripts_post_install_tests.sh.cwl
inputs:
- id: r_seurat_workflow_post_install_tests_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: action
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: use_existing_outputs
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bioconductor-scater-scripts-post-install-tests.sh
