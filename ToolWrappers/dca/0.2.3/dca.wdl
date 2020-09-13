version 1.0

task Dca {
  input {
    Int? norm_type
    Boolean? transpose
    Boolean? test_split
    String? type
    Int? threads
    Int? batch_size
    Boolean? size_factors
    Boolean? no_size_factors
    Boolean? norm_input
    Boolean? no_norm_input
    Boolean? login_put
    Boolean? no_login_put
    Int? dropout_rate
    Boolean? batch_norm
    Boolean? no_batch_norm
    Int? l_two
    Int? lone
    Int? l_two_enc
    Int? lone_enc
    Float? ridge
    Float? grad_clip
    String? activation
    String? optimizer
    String? in_it
    Int? epochs
    Int? early_stop
    Int? reduce_lr
    Int? hidden_size
    String? input_dropout
    Float? learning_rate
    Boolean? save_weights
    Boolean? no_save_weights
    Boolean? hyper
    Int? hyper_n
    Int? hyper_epoch
    Boolean? debug
    Boolean? tensor_board
    File? de_noise_subset
    String input_raw_count
    String output_dir
  }
  command <<<
    dca \
      ~{input_raw_count} \
      ~{output_dir} \
      ~{if defined(norm_type) then ("--normtype " +  '"' + norm_type + '"') else ""} \
      ~{if (transpose) then "--transpose" else ""} \
      ~{if (test_split) then "--testsplit" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(batch_size) then ("--batchsize " +  '"' + batch_size + '"') else ""} \
      ~{if (size_factors) then "--sizefactors" else ""} \
      ~{if (no_size_factors) then "--nosizefactors" else ""} \
      ~{if (norm_input) then "--norminput" else ""} \
      ~{if (no_norm_input) then "--nonorminput" else ""} \
      ~{if (login_put) then "--loginput" else ""} \
      ~{if (no_login_put) then "--nologinput" else ""} \
      ~{if defined(dropout_rate) then ("--dropoutrate " +  '"' + dropout_rate + '"') else ""} \
      ~{if (batch_norm) then "--batchnorm" else ""} \
      ~{if (no_batch_norm) then "--nobatchnorm" else ""} \
      ~{if defined(l_two) then ("--l2 " +  '"' + l_two + '"') else ""} \
      ~{if defined(lone) then ("--l1 " +  '"' + lone + '"') else ""} \
      ~{if defined(l_two_enc) then ("--l2enc " +  '"' + l_two_enc + '"') else ""} \
      ~{if defined(lone_enc) then ("--l1enc " +  '"' + lone_enc + '"') else ""} \
      ~{if defined(ridge) then ("--ridge " +  '"' + ridge + '"') else ""} \
      ~{if defined(grad_clip) then ("--gradclip " +  '"' + grad_clip + '"') else ""} \
      ~{if defined(activation) then ("--activation " +  '"' + activation + '"') else ""} \
      ~{if defined(optimizer) then ("--optimizer " +  '"' + optimizer + '"') else ""} \
      ~{if defined(in_it) then ("--init " +  '"' + in_it + '"') else ""} \
      ~{if defined(epochs) then ("--epochs " +  '"' + epochs + '"') else ""} \
      ~{if defined(early_stop) then ("--earlystop " +  '"' + early_stop + '"') else ""} \
      ~{if defined(reduce_lr) then ("--reducelr " +  '"' + reduce_lr + '"') else ""} \
      ~{if defined(hidden_size) then ("--hiddensize " +  '"' + hidden_size + '"') else ""} \
      ~{if defined(input_dropout) then ("--inputdropout " +  '"' + input_dropout + '"') else ""} \
      ~{if defined(learning_rate) then ("--learningrate " +  '"' + learning_rate + '"') else ""} \
      ~{if (save_weights) then "--saveweights" else ""} \
      ~{if (no_save_weights) then "--no-saveweights" else ""} \
      ~{if (hyper) then "--hyper" else ""} \
      ~{if defined(hyper_n) then ("--hypern " +  '"' + hyper_n + '"') else ""} \
      ~{if defined(hyper_epoch) then ("--hyperepoch " +  '"' + hyper_epoch + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (tensor_board) then "--tensorboard" else ""} \
      ~{if defined(de_noise_subset) then ("--denoisesubset " +  '"' + de_noise_subset + '"') else ""}
  >>>
  parameter_meta {
    norm_type: "Type of size factor estimation. Possible values:\\ndeseq, zheng. (default: zheng)"
    transpose: "Transpose input matrix (default: False)"
    test_split: "Use one fold as a test set (default: False)"
    type: "Type of autoencoder. Possible values: normal, poisson,\\nnb, nb-shared, nb-conddisp, nb-fork, zinb, zinb-\\nshared, zinb-conddisp(default) zinb-fork"
    threads: "Number of threads for training (default is all cores)"
    batch_size: "Batch size (default:32)"
    size_factors: "Normalize means by library size (default: True)"
    no_size_factors: "Do not normalize means by library size"
    norm_input: "Zero-mean normalize input (default: True)"
    no_norm_input: "Do not zero-mean normalize inputs"
    login_put: "Log-transform input (default: True)"
    no_login_put: "Do not log-transform inputs"
    dropout_rate: "Dropout rate (default: 0)"
    batch_norm: "Batchnorm (default: True)"
    no_batch_norm: "Do not use batchnorm"
    l_two: "L2 regularization coefficient (default: 0.0)"
    lone: "L1 regularization coefficient (default: 0.0)"
    l_two_enc: "Encoder-specific L2 regularization coefficient\\n(default: 0.0)"
    lone_enc: "Encoder-specific L1 regularization coefficient\\n(default: 0.0)"
    ridge: "L2 regularization coefficient for dropout\\nprobabilities (default: 0.0)"
    grad_clip: "Clip grad values (default: 5.0)"
    activation: "Activation function of hidden units (default: relu)"
    optimizer: "Optimization method (default: rmsprop)"
    in_it: "Initialization method for weights (default:\\nglorot_uniform)"
    epochs: "Max number of epochs to continue training in case of\\nno improvement on validation loss (default: 300)"
    early_stop: "Number of epochs to stop training if no improvement in\\nloss occurs (default: 15)"
    reduce_lr: "Number of epochs to reduce learning rate if no\\nimprovement in loss occurs (default: 10)"
    hidden_size: "Size of hidden layers (default: 64,32,64)"
    input_dropout: "Input layer dropout probability"
    learning_rate: "Learning rate (default: 0.001)"
    save_weights: "Save weights (default: False)"
    no_save_weights: "Do not save weights"
    hyper: "Optimizer hyperparameters (default: False)"
    hyper_n: "Number of samples drawn from hyperparameter\\ndistributions during optimization. (default: 1000)"
    hyper_epoch: "Number of epochs used in each hyperpar optimization\\niteration. (default: 100)"
    debug: "Enable debugging. Checks whether every term in loss\\nfunctions is finite. (default: False)"
    tensor_board: "Use tensorboard for saving weight distributions and\\nvisualization. (default: False)"
    de_noise_subset: "Perform denoising only for the subset of genes in the\\ngiven file. Gene names should be line separated.\\n"
    input_raw_count: "Input is raw count data in TSV/CSV or H5AD (anndata)\\nformat. Row/col names are mandatory. Note that TSV/CSV\\nfiles must be in gene x cell layout where rows are\\ngenes and cols are cells (scRNA-seq convention).Use\\nthe -t/--transpose option if your count matrix in cell\\nx gene layout. H5AD files must be in cell x gene\\nformat (stats and scanpy convention)."
    output_dir: "The path of the output directory"
  }
  output {
    File out_stdout = stdout()
  }
}