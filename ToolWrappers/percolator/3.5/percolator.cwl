class: CommandLineTool
id: percolator.cwl
inputs:
- id: in_num_threads
  doc: "Number of total parallel threads\nfor SVM training during cross\nvalidation.\
    \ Default (one thread\nper CV fold) = 3."
  type: long
  inputBinding:
    prefix: --num-threads
- id: in_nested_xval_bins
  doc: "Number of nested cross validation\nbins within each cross validation\nbin.\
    \ This should reduce\noverfitting of the\nhyperparameters. Default = 1."
  type: long
  inputBinding:
    prefix: --nested-xval-bins
- id: in_spectral_counting_fdr
  doc: "Activates spectral counting on\nprotein level (either\n--fido-protein or --picked-protein\n\
    has to be set) at the specified\nPSM q-value threshold. Adds two\ncolumns, \"\
    spec_count_unique\" and\n\"spec_count_all\", to the protein\ntab separated output,\
    \ containing\nthe spectral count for the\npeptides unique to the protein and\n\
    the spectral count including\nshared peptides respectively."
  type: string
  inputBinding:
    prefix: --spectral-counting-fdr
- id: in_train_best_positive
  doc: "Enforce that, for each spectrum,\nat most one PSM is included in the\npositive\
    \ set during each training\niteration. If the user only\nprovides one PSM per\
    \ spectrum,\nthis filter will have no effect."
  type: boolean
  inputBinding:
    prefix: --train-best-positive
- id: in_train_fdr_initial
  doc: "Set the FDR threshold for the\nfirst iteration. This is useful in\ncases where\
    \ the original features\ndo not display a good separation\nbetween targets and\
    \ decoys. In\nsubsequent iterations, the normal\n--trainFDR will be used."
  type: string
  inputBinding:
    prefix: --train-fdr-initial
- id: in_parameter_file
  doc: "Read flags from a parameter file.\nIf flags are specified on the\ncommand\
    \ line as well, these will\noverride the ones in the parameter\nfile.\n"
  type: File
  inputBinding:
    prefix: --parameter-file
- id: in_x
  doc: ''
  type: string
  inputBinding:
    prefix: -X
- id: in_other
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- percolator
