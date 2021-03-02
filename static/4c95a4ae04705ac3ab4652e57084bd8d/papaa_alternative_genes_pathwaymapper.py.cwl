class: CommandLineTool
id: papaa_alternative_genes_pathwaymapper.py.cwl
inputs:
- id: in_classifier_decisions
  doc: "string of the location of classifier decisions file\nwith predictions/scores"
  type: File?
  inputBinding:
    prefix: --classifier_decisions
- id: in_genes
  doc: string of the genes to extract or genelist file
  type: File?
  inputBinding:
    prefix: --genes
- id: in_path_genes
  doc: pathway gene list file
  type: File?
  inputBinding:
    prefix: --path_genes
- id: in_filename_mut
  doc: Filename of sample/gene mutations to use in model
  type: File?
  inputBinding:
    prefix: --filename_mut
- id: in_filename_sample
  doc: Filename of patient/samples to use in model
  type: File?
  inputBinding:
    prefix: --filename_sample
- id: in_copy_number
  doc: optional flag to include copy number info in pathway
  type: boolean?
  inputBinding:
    prefix: --copy_number
- id: in_filename_copy_gain
  doc: "Filename of copy number gain\n"
  type: File?
  inputBinding:
    prefix: --filename_copy_gain
- id: in_map
  doc: --filename_copy_loss FILENAME_COPY_LOSS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/papaa:0.1.9--0
cwlVersion: v1.1
baseCommand:
- papaa_alternative_genes_pathwaymapper.py
