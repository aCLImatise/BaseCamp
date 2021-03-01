class: CommandLineTool
id: papaa_pancancer_classifier.py.cwl
inputs:
- id: in_genes
  doc: string of the genes to extract or genelist file
  type: File?
  inputBinding:
    prefix: --genes
- id: in_diseases
  doc: "Comma sep string of TCGA disease acronyms.\ndiseases_list_fileIf no arguments\
    \ are passed,\nfiltering will default to options given in\n--filter_count and\
    \ --filter_prop."
  type: string?
  inputBinding:
    prefix: --diseases
- id: in_folds
  doc: Number of cross validation folds to perform
  type: long?
  inputBinding:
    prefix: --folds
- id: in_drop
  doc: Decision to drop input genes from X matrix
  type: boolean?
  inputBinding:
    prefix: --drop
- id: in_copy_number
  doc: Supplement Y matrix with copy number events
  type: boolean?
  inputBinding:
    prefix: --copy_number
- id: in_filter_count
  doc: Min number of mutations in diseases to include
  type: long?
  inputBinding:
    prefix: --filter_count
- id: in_filter_prop
  doc: Min proportion of positives to include disease
  type: long?
  inputBinding:
    prefix: --filter_prop
- id: in_num_features
  doc: Number of MAD genes to include in classifier
  type: long?
  inputBinding:
    prefix: --num_features
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
- id: in_alt_genes
  doc: "string of the alt_genes to extract or alt_genelist\nfile to test performance"
  type: File?
  inputBinding:
    prefix: --alt_genes
- id: in_alt_diseases
  doc: The alternative diseases to test performance
  type: string?
  inputBinding:
    prefix: --alt_diseases
- id: in_alt_filter_count
  doc: Min number of mutations in disease to include
  type: long?
  inputBinding:
    prefix: --alt_filter_count
- id: in_alt_filter_prop
  doc: Min proportion of positives to include disease
  type: long?
  inputBinding:
    prefix: --alt_filter_prop
- id: in_classifier_results
  doc: Location to save classifier outputs
  type: string?
  inputBinding:
    prefix: --classifier_results
- id: in_remove_hyper
  doc: Remove hypermutated samples
  type: boolean?
  inputBinding:
    prefix: --remove_hyper
- id: in_keep_intermediate
  doc: Keep intermediate ROC values for plotting
  type: boolean?
  inputBinding:
    prefix: --keep_intermediate
- id: in_x_matrix
  doc: Filename of features to use in model
  type: File?
  inputBinding:
    prefix: --x_matrix
- id: in_shuffled
  doc: Shuffle the input gene exprs matrix alongside
  type: boolean?
  inputBinding:
    prefix: --shuffled
- id: in_shuffled_before_training
  doc: Shuffle the gene exprs matrix before training
  type: boolean?
  inputBinding:
    prefix: --shuffled_before_training
- id: in_no_mutation
  doc: Remove mutation data from y matrix
  type: boolean?
  inputBinding:
    prefix: --no_mutation
- id: in_drop_x_genes
  doc: "Comma separated list of genes to be dropped from X\nmatrix, x_genelist file"
  type: File?
  inputBinding:
    prefix: --drop_x_genes
- id: in_drop_expression
  doc: Decision to drop gene expression values from X
  type: boolean?
  inputBinding:
    prefix: --drop_expression
- id: in_drop_covariates
  doc: Decision to drop covariate information from X
  type: boolean?
  inputBinding:
    prefix: --drop_covariates
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
  doc: Filename of cancer gene classification table
  type: File?
  inputBinding:
    prefix: --filename_cancer_gene_classification
- id: in_seed
  doc: option to set seed
  type: string?
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/papaa:0.1.9--0
cwlVersion: v1.1
baseCommand:
- papaa_pancancer_classifier.py
