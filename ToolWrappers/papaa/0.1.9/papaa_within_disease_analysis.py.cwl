class: CommandLineTool
id: papaa_within_disease_analysis.py.cwl
inputs:
- id: in_genes
  doc: string of the genes to extract or genelist file
  type: File?
  inputBinding:
    prefix: --genes
- id: in_diseases
  doc: comma seperated diseases list in a file
  type: File?
  inputBinding:
    prefix: --diseases
- id: in_alphas
  doc: the alphas for parameter sweep
  type: string?
  inputBinding:
    prefix: --alphas
- id: in_lone_ratios
  doc: the l1 ratios for parameter sweep
  type: long?
  inputBinding:
    prefix: --l1_ratios
- id: in_num_features
  doc: Number of MAD genes to include in classifier
  type: long?
  inputBinding:
    prefix: --num_features
- id: in_seed
  doc: option to set seed
  type: string?
  inputBinding:
    prefix: --seed
- id: in_remove_hyper
  doc: Remove hypermutated samples
  type: boolean?
  inputBinding:
    prefix: --remove_hyper
- id: in_classifier_results
  doc: location to save
  type: string?
  inputBinding:
    prefix: --classifier_results
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
- papaa_within_disease_analysis.py
