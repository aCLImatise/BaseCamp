class: CommandLineTool
id: dca.cwl
inputs:
- id: in_norm_type
  doc: "Type of size factor estimation. Possible values:\ndeseq, zheng. (default:\
    \ zheng)"
  type: long?
  inputBinding:
    prefix: --normtype
- id: in_transpose
  doc: 'Transpose input matrix (default: False)'
  type: boolean?
  inputBinding:
    prefix: --transpose
- id: in_test_split
  doc: 'Use one fold as a test set (default: False)'
  type: boolean?
  inputBinding:
    prefix: --testsplit
- id: in_type
  doc: "Type of autoencoder. Possible values: normal, poisson,\nnb, nb-shared, nb-conddisp,\
    \ nb-fork, zinb, zinb-\nshared, zinb-conddisp(default) zinb-fork"
  type: string?
  inputBinding:
    prefix: --type
- id: in_threads
  doc: Number of threads for training (default is all cores)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_batch_size
  doc: Batch size (default:32)
  type: long?
  inputBinding:
    prefix: --batchsize
- id: in_size_factors
  doc: 'Normalize means by library size (default: True)'
  type: boolean?
  inputBinding:
    prefix: --sizefactors
- id: in_no_size_factors
  doc: Do not normalize means by library size
  type: boolean?
  inputBinding:
    prefix: --nosizefactors
- id: in_norm_input
  doc: 'Zero-mean normalize input (default: True)'
  type: boolean?
  inputBinding:
    prefix: --norminput
- id: in_no_norm_input
  doc: Do not zero-mean normalize inputs
  type: boolean?
  inputBinding:
    prefix: --nonorminput
- id: in_login_put
  doc: 'Log-transform input (default: True)'
  type: boolean?
  inputBinding:
    prefix: --loginput
- id: in_no_login_put
  doc: Do not log-transform inputs
  type: boolean?
  inputBinding:
    prefix: --nologinput
- id: in_dropout_rate
  doc: 'Dropout rate (default: 0)'
  type: long?
  inputBinding:
    prefix: --dropoutrate
- id: in_batch_norm
  doc: 'Batchnorm (default: True)'
  type: boolean?
  inputBinding:
    prefix: --batchnorm
- id: in_no_batch_norm
  doc: Do not use batchnorm
  type: boolean?
  inputBinding:
    prefix: --nobatchnorm
- id: in_l_two
  doc: 'L2 regularization coefficient (default: 0.0)'
  type: long?
  inputBinding:
    prefix: --l2
- id: in_lone
  doc: 'L1 regularization coefficient (default: 0.0)'
  type: long?
  inputBinding:
    prefix: --l1
- id: in_l_two_enc
  doc: "Encoder-specific L2 regularization coefficient\n(default: 0.0)"
  type: long?
  inputBinding:
    prefix: --l2enc
- id: in_lone_enc
  doc: "Encoder-specific L1 regularization coefficient\n(default: 0.0)"
  type: long?
  inputBinding:
    prefix: --l1enc
- id: in_ridge
  doc: "L2 regularization coefficient for dropout\nprobabilities (default: 0.0)"
  type: double?
  inputBinding:
    prefix: --ridge
- id: in_grad_clip
  doc: 'Clip grad values (default: 5.0)'
  type: double?
  inputBinding:
    prefix: --gradclip
- id: in_activation
  doc: 'Activation function of hidden units (default: relu)'
  type: string?
  inputBinding:
    prefix: --activation
- id: in_optimizer
  doc: 'Optimization method (default: rmsprop)'
  type: string?
  inputBinding:
    prefix: --optimizer
- id: in_in_it
  doc: "Initialization method for weights (default:\nglorot_uniform)"
  type: string?
  inputBinding:
    prefix: --init
- id: in_epochs
  doc: "Max number of epochs to continue training in case of\nno improvement on validation\
    \ loss (default: 300)"
  type: long?
  inputBinding:
    prefix: --epochs
- id: in_early_stop
  doc: "Number of epochs to stop training if no improvement in\nloss occurs (default:\
    \ 15)"
  type: long?
  inputBinding:
    prefix: --earlystop
- id: in_reduce_lr
  doc: "Number of epochs to reduce learning rate if no\nimprovement in loss occurs\
    \ (default: 10)"
  type: long?
  inputBinding:
    prefix: --reducelr
- id: in_hidden_size
  doc: 'Size of hidden layers (default: 64,32,64)'
  type: long?
  inputBinding:
    prefix: --hiddensize
- id: in_input_dropout
  doc: Input layer dropout probability
  type: string?
  inputBinding:
    prefix: --inputdropout
- id: in_learning_rate
  doc: 'Learning rate (default: 0.001)'
  type: double?
  inputBinding:
    prefix: --learningrate
- id: in_save_weights
  doc: 'Save weights (default: False)'
  type: boolean?
  inputBinding:
    prefix: --saveweights
- id: in_no_save_weights
  doc: Do not save weights
  type: boolean?
  inputBinding:
    prefix: --no-saveweights
- id: in_hyper
  doc: 'Optimizer hyperparameters (default: False)'
  type: boolean?
  inputBinding:
    prefix: --hyper
- id: in_hyper_n
  doc: "Number of samples drawn from hyperparameter\ndistributions during optimization.\
    \ (default: 1000)"
  type: long?
  inputBinding:
    prefix: --hypern
- id: in_hyper_epoch
  doc: "Number of epochs used in each hyperpar optimization\niteration. (default:\
    \ 100)"
  type: long?
  inputBinding:
    prefix: --hyperepoch
- id: in_debug
  doc: "Enable debugging. Checks whether every term in loss\nfunctions is finite.\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_tensor_board
  doc: "Use tensorboard for saving weight distributions and\nvisualization. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --tensorboard
- id: in_de_noise_subset
  doc: "Perform denoising only for the subset of genes in the\ngiven file. Gene names\
    \ should be line separated.\n"
  type: File?
  inputBinding:
    prefix: --denoisesubset
- id: in_input
  doc: "Input is raw count data in TSV/CSV or H5AD (anndata)\nformat. Row/col names\
    \ are mandatory. Note that TSV/CSV\nfiles must be in gene x cell layout where\
    \ rows are\ngenes and cols are cells (scRNA-seq convention).Use\nthe -t/--transpose\
    \ option if your count matrix in cell\nx gene layout. H5AD files must be in cell\
    \ x gene\nformat (stats and scanpy convention)."
  type: string
  inputBinding:
    position: 0
- id: in_output_dir
  doc: The path of the output directory
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dca
