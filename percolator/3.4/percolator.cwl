class: CommandLineTool
id: percolator.cwl
inputs:
- id: other
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pints_v
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fido_grid_search_mse_threshold
  doc: Q-value threshold that will be  used in the computation of the MSE  and ROC
    AUC score in the grid  search. Recommended 0.05 for  normal size datasets and
    0.1 for  large datasets. Default = 0.1
  type: string
  inputBinding:
    prefix: --fido-gridsearch-mse-threshold
- id: nested_xval_bins
  doc: Number of nested cross validation  bins within each cross validation  bin.
    This should reduce  overfitting of the  hyperparameters. Default = 1.
  type: string
  inputBinding:
    prefix: --nested-xval-bins
- id: spectral_counting_fdr
  doc: Activates spectral counting on  protein level (either  --fido-protein or --picked-protein  has
    to be set) at the specified  PSM q-value threshold. Adds two  columns, "spec_count_unique"
    and  "spec_count_all", to the protein  tab separated output, containing  the spectral
    count for the  peptides unique to the protein and  the spectral count including  shared
    peptides respectively.
  type: string
  inputBinding:
    prefix: --spectral-counting-fdr
- id: train_best_positive
  doc: Enforce that, for each spectrum,  at most one PSM is included in the  positive
    set during each training  iteration. If the user only  provides one PSM per spectrum,  this
    filter will have no effect.
  type: boolean
  inputBinding:
    prefix: --train-best-positive
- id: train_fdr_initial
  doc: Set the FDR threshold for the  first iteration. This is useful in  cases where
    the original features  do not display a good separation  between targets and decoys.
    In  subsequent iterations, the normal  --trainFDR will be used.
  type: string
  inputBinding:
    prefix: --train-fdr-initial
- id: parameter_file
  doc: Read flags from a parameter file.  If flags are specified on the  command line
    as well, these will  override the ones in the parameter  file.
  type: File
  inputBinding:
    prefix: --parameter-file
outputs: []
cwlVersion: v1.1
baseCommand:
- percolator
