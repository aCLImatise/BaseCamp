#!/usr/bin/env cwl-runner

baseCommand:
- dca
class: CommandLineTool
cwlVersion: v1.0
id: dca
inputs:
- doc: Input is raw count data in TSV/CSV or H5AD (anndata) format. Row/col names
    are mandatory. Note that TSV/CSV files must be in gene x cell layout where rows
    are genes and cols are cells (scRNA-seq convention).Use the -t/--transpose option
    if your count matrix in cell x gene layout. H5AD files must be in cell x gene
    format (stats and scanpy convention).
  id: input
  inputBinding:
    position: 0
  type: string
- doc: The path of the output directory
  id: output_dir
  inputBinding:
    position: 1
  type: string
- doc: 'Type of size factor estimation. Possible values: deseq, zheng. (default: zheng)'
  id: norm_type
  inputBinding:
    prefix: --normtype
  type: string
- doc: 'Transpose input matrix (default: False)'
  id: transpose
  inputBinding:
    prefix: --transpose
  type: boolean
- doc: 'Use one fold as a test set (default: False)'
  id: test_split
  inputBinding:
    prefix: --testsplit
  type: boolean
- doc: 'Type of autoencoder. Possible values: normal, poisson, nb, nb-shared, nb-conddisp,
    nb-fork, zinb, zinb- shared, zinb-conddisp(default) zinb-fork'
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: Number of threads for training (default is all cores)
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Batch size (default:32)
  id: batch_size
  inputBinding:
    prefix: --batchsize
  type: string
- doc: 'Normalize means by library size (default: True)'
  id: size_factors
  inputBinding:
    prefix: --sizefactors
  type: boolean
- doc: Do not normalize means by library size
  id: no_size_factors
  inputBinding:
    prefix: --nosizefactors
  type: boolean
- doc: 'Zero-mean normalize input (default: True)'
  id: norm_input
  inputBinding:
    prefix: --norminput
  type: boolean
- doc: Do not zero-mean normalize inputs
  id: no_norm_input
  inputBinding:
    prefix: --nonorminput
  type: boolean
- doc: 'Log-transform input (default: True)'
  id: login_put
  inputBinding:
    prefix: --loginput
  type: boolean
- doc: Do not log-transform inputs
  id: no_login_put
  inputBinding:
    prefix: --nologinput
  type: boolean
- doc: 'Dropout rate (default: 0)'
  id: dropout_rate
  inputBinding:
    prefix: --dropoutrate
  type: string
- doc: 'Batchnorm (default: True)'
  id: batch_norm
  inputBinding:
    prefix: --batchnorm
  type: boolean
- doc: Do not use batchnorm
  id: no_batch_norm
  inputBinding:
    prefix: --nobatchnorm
  type: boolean
- doc: 'L2 regularization coefficient (default: 0.0)'
  id: l2
  inputBinding:
    prefix: --l2
  type: string
- doc: 'L1 regularization coefficient (default: 0.0)'
  id: l1
  inputBinding:
    prefix: --l1
  type: string
- doc: 'Encoder-specific L2 regularization coefficient (default: 0.0)'
  id: l2enc
  inputBinding:
    prefix: --l2enc
  type: string
- doc: 'Encoder-specific L1 regularization coefficient (default: 0.0)'
  id: l1enc
  inputBinding:
    prefix: --l1enc
  type: string
- doc: 'L2 regularization coefficient for dropout probabilities (default: 0.0)'
  id: ridge
  inputBinding:
    prefix: --ridge
  type: string
- doc: 'Clip grad values (default: 5.0)'
  id: grad_clip
  inputBinding:
    prefix: --gradclip
  type: string
- doc: 'Activation function of hidden units (default: relu)'
  id: activation
  inputBinding:
    prefix: --activation
  type: string
- doc: 'Optimization method (default: rmsprop)'
  id: optimizer
  inputBinding:
    prefix: --optimizer
  type: string
- doc: 'Initialization method for weights (default: glorot_uniform)'
  id: in_it
  inputBinding:
    prefix: --init
  type: string
- doc: 'Max number of epochs to continue training in case of no improvement on validation
    loss (default: 300)'
  id: epochs
  inputBinding:
    prefix: --epochs
  type: string
- doc: 'Number of epochs to stop training if no improvement in loss occurs (default:
    15)'
  id: early_stop
  inputBinding:
    prefix: --earlystop
  type: string
- doc: 'Number of epochs to reduce learning rate if no improvement in loss occurs
    (default: 10)'
  id: reduce_lr
  inputBinding:
    prefix: --reducelr
  type: string
- doc: 'Size of hidden layers (default: 64,32,64)'
  id: hidden_size
  inputBinding:
    prefix: --hiddensize
  type: string
- doc: Input layer dropout probability
  id: input_dropout
  inputBinding:
    prefix: --inputdropout
  type: string
- doc: 'Learning rate (default: 0.001)'
  id: learning_rate
  inputBinding:
    prefix: --learningrate
  type: string
- doc: 'Save weights (default: False)'
  id: save_weights
  inputBinding:
    prefix: --saveweights
  type: boolean
- doc: Do not save weights
  id: no_save_weights
  inputBinding:
    prefix: --no-saveweights
  type: boolean
- doc: 'Optimizer hyperparameters (default: False)'
  id: hyper
  inputBinding:
    prefix: --hyper
  type: boolean
- doc: 'Number of samples drawn from hyperparameter distributions during optimization.
    (default: 1000)'
  id: hyper_n
  inputBinding:
    prefix: --hypern
  type: string
- doc: 'Number of epochs used in each hyperpar optimization iteration. (default: 100)'
  id: hyper_epoch
  inputBinding:
    prefix: --hyperepoch
  type: string
- doc: 'Enable debugging. Checks whether every term in loss functions is finite. (default:
    False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: 'Use tensorboard for saving weight distributions and visualization. (default:
    False)'
  id: tensor_board
  inputBinding:
    prefix: --tensorboard
  type: boolean
- doc: Perform denoising only for the subset of genes in the given file. Gene names
    should be line separated.
  id: de_noise_subset
  inputBinding:
    prefix: --denoisesubset
  type: string
