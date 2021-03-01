class: CommandLineTool
id: papaa_map_mutation_class.py.cwl
inputs:
- id: in_classifier_decisions
  doc: "string of the location of classifier decision file\nwith predictions or scores"
  type: File?
  inputBinding:
    prefix: --classifier_decisions
- id: in_path_genes
  doc: pathway gene list file
  type: File?
  inputBinding:
    prefix: --path_genes
- id: in_copy_number
  doc: optional flag to include copy number info in map
  type: boolean?
  inputBinding:
    prefix: --copy_number
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
- id: in_filename_raw_mut
  doc: "Filename of raw mut MAF\n"
  type: File?
  inputBinding:
    prefix: --filename_raw_mut
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/papaa:0.1.9--0
cwlVersion: v1.1
baseCommand:
- papaa_map_mutation_class.py
