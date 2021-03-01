class: CommandLineTool
id: papaa_apply_weights.py.cwl
inputs:
- id: in_classifier_summary
  doc: folder location of classifier summary file
  type: File?
  inputBinding:
    prefix: --classifier_summary
- id: in_copy_number
  doc: Supplement Y matrix with copy number events
  type: boolean?
  inputBinding:
    prefix: --copy_number
- id: in_x_matrix
  doc: Filename of features to use in model
  type: File?
  inputBinding:
    prefix: --x_matrix
- id: in_filename_mut
  doc: Filename of sample/gene mutations to use in model
  type: File?
  inputBinding:
    prefix: --filename_mut
- id: in_filename_mut_burden
  doc: Filename of sample mutation burden to use in model
  type: File?
  inputBinding:
    prefix: --filename_mut_burden
- id: in_filename_sample
  doc: Filename of patient/samples to use in model
  type: File?
  inputBinding:
    prefix: --filename_sample
- id: in_filename_copy_loss
  doc: Filename of copy number loss
  type: File?
  inputBinding:
    prefix: --filename_copy_loss
- id: in_filename_copy_gain
  doc: Filename of copy number gain
  type: File?
  inputBinding:
    prefix: --filename_copy_gain
- id: in_filename_cancer_gene_classification
  doc: "Filename of cancer gene classification table\n"
  type: File?
  inputBinding:
    prefix: --filename_cancer_gene_classification
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/papaa:0.1.9--0
cwlVersion: v1.1
baseCommand:
- papaa_apply_weights.py
