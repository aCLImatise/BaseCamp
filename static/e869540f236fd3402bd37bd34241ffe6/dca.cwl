class: CommandLineTool
id: dca.cwl
inputs:
- id: input
  doc: Input is raw count data in TSV/CSV or H5AD (anndata) format. Row/col names
    are mandatory. Note that TSV/CSV files must be in gene x cell layout where rows
    are genes and cols are cells (scRNA-seq convention).Use the -t/--transpose option
    if your count matrix in cell x gene layout. H5AD files must be in cell x gene
    format (stats and scanpy convention).
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: The path of the output directory
  type: string
  inputBinding:
    position: 1
- id: norm_type
  doc: 'Type of size factor estimation. Possible values: deseq, zheng. (default: zheng)'
  type: string
  inputBinding:
    prefix: --normtype
- id: transpose
  doc: 'Transpose input matrix (default: False)'
  type: boolean
  inputBinding:
    prefix: --transpose
- id: test_split
  doc: 'Use one fold as a test set (default: False)'
  type: boolean
  inputBinding:
    prefix: --testsplit
- id: type
  doc: 'Type of autoencoder. Possible values: normal, poisson, nb, nb-shared, nb-conddisp,
    nb-fork, zinb, zinb- shared, zinb-conddisp(default) zinb-fork'
  type: string
  inputBinding:
    prefix: --type
- id: threads
  doc: Number of threads for training (default is all cores)
  type: string
  inputBinding:
    prefix: --threads
- id: batch_size
  doc: Batch size (default:32)
  type: string
  inputBinding:
    prefix: --batchsize
- id: size_factors
  doc: 'Normalize means by library size (default: True)'
  type: boolean
  inputBinding:
    prefix: --sizefactors
- id: no_size_factors
  doc: Do not normalize means by library size
  type: boolean
  inputBinding:
    prefix: --nosizefactors
- id: norm_input
  doc: 'Zero-mean normalize input (default: True)'
  type: boolean
  inputBinding:
    prefix: --norminput
- id: no_norm_input
  doc: Do not zero-mean normalize inputs
  type: boolean
  inputBinding:
    prefix: --nonorminput
- id: login_put
  doc: 'Log-transform input (default: True)'
  type: boolean
  inputBinding:
    prefix: --loginput
- id: no_login_put
  doc: Do not log-transform inputs
  type: boolean
  inputBinding:
    prefix: --nologinput
- id: dropout_rate
  doc: 'Dropout rate (default: 0)'
  type: string
  inputBinding:
    prefix: --dropoutrate
- id: batch_norm
  doc: 'Batchnorm (default: True)'
  type: boolean
  inputBinding:
    prefix: --batchnorm
- id: no_batch_norm
  doc: Do not use batchnorm
  type: boolean
  inputBinding:
    prefix: --nobatchnorm
- id: l2
  doc: 'L2 regularization coefficient (default: 0.0)'
  type: string
  inputBinding:
    prefix: --l2
- id: l1
  doc: 'L1 regularization coefficient (default: 0.0)'
  type: string
  inputBinding:
    prefix: --l1
- id: l2enc
  doc: 'Encoder-specific L2 regularization coefficient (default: 0.0)'
  type: string
  inputBinding:
    prefix: --l2enc
- id: l1enc
  doc: 'Encoder-specific L1 regularization coefficient (default: 0.0)'
  type: string
  inputBinding:
    prefix: --l1enc
- id: ridge
  doc: 'L2 regularization coefficient for dropout probabilities (default: 0.0)'
  type: string
  inputBinding:
    prefix: --ridge
- id: grad_clip
  doc: 'Clip grad values (default: 5.0)'
  type: string
  inputBinding:
    prefix: --gradclip
- id: activation
  doc: 'Activation function of hidden units (default: relu)'
  type: string
  inputBinding:
    prefix: --activation
- id: optimizer
  doc: 'Optimization method (default: rmsprop)'
  type: string
  inputBinding:
    prefix: --optimizer
- id: in_it
  doc: 'Initialization method for weights (default: glorot_uniform)'
  type: string
  inputBinding:
    prefix: --init
- id: epochs
  doc: 'Max number of epochs to continue training in case of no improvement on validation
    loss (default: 300)'
  type: string
  inputBinding:
    prefix: --epochs
- id: early_stop
  doc: 'Number of epochs to stop training if no improvement in loss occurs (default:
    15)'
  type: string
  inputBinding:
    prefix: --earlystop
- id: reduce_lr
  doc: 'Number of epochs to reduce learning rate if no improvement in loss occurs
    (default: 10)'
  type: string
  inputBinding:
    prefix: --reducelr
- id: hidden_size
  doc: 'Size of hidden layers (default: 64,32,64)'
  type: string
  inputBinding:
    prefix: --hiddensize
- id: input_dropout
  doc: Input layer dropout probability
  type: string
  inputBinding:
    prefix: --inputdropout
- id: learning_rate
  doc: 'Learning rate (default: 0.001)'
  type: string
  inputBinding:
    prefix: --learningrate
- id: save_weights
  doc: 'Save weights (default: False)'
  type: boolean
  inputBinding:
    prefix: --saveweights
- id: no_save_weights
  doc: Do not save weights
  type: boolean
  inputBinding:
    prefix: --no-saveweights
- id: hyper
  doc: 'Optimizer hyperparameters (default: False)'
  type: boolean
  inputBinding:
    prefix: --hyper
- id: hyper_n
  doc: 'Number of samples drawn from hyperparameter distributions during optimization.
    (default: 1000)'
  type: string
  inputBinding:
    prefix: --hypern
- id: hyper_epoch
  doc: 'Number of epochs used in each hyperpar optimization iteration. (default: 100)'
  type: string
  inputBinding:
    prefix: --hyperepoch
- id: debug
  doc: 'Enable debugging. Checks whether every term in loss functions is finite. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: tensor_board
  doc: 'Use tensorboard for saving weight distributions and visualization. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --tensorboard
- id: de_noise_subset
  doc: Perform denoising only for the subset of genes in the given file. Gene names
    should be line separated.
  type: string
  inputBinding:
    prefix: --denoisesubset
outputs: []
cwlVersion: v1.1
baseCommand:
- dca
