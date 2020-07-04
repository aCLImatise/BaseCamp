version 1.0

task Nanonettrain {
  input {
    String? train
    String? train_list
    String? section
    String? val
    String? val_list
    String? workspace
    String? output_prefix_default
    String? model
    String? km_er_length
    String? bases
    String? device
    Boolean? no_cuda
    Array[String] window
    Int? max_epochs
    Int? max_epochs_no_best
    String? validate_every
    String? parallel_sequences
    String? learning_rate
    String? momentum
    String? cache_path
  }
  command <<<
    nanonettrain \
      ~{if defined(train) then ("--train " +  '"' + train + '"') else ""} \
      ~{if defined(train_list) then ("--train_list " +  '"' + train_list + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if defined(val) then ("--val " +  '"' + val + '"') else ""} \
      ~{if defined(val_list) then ("--val_list " +  '"' + val_list + '"') else ""} \
      ~{if defined(workspace) then ("--workspace " +  '"' + workspace + '"') else ""} \
      ~{if defined(output_prefix_default) then ("--output " +  '"' + output_prefix_default + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(km_er_length) then ("--kmer_length " +  '"' + km_er_length + '"') else ""} \
      ~{if defined(bases) then ("--bases " +  '"' + bases + '"') else ""} \
      ~{if defined(device) then ("--device " +  '"' + device + '"') else ""} \
      ~{true="--no-cuda" false="" no_cuda} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(max_epochs) then ("--max_epochs " +  '"' + max_epochs + '"') else ""} \
      ~{if defined(max_epochs_no_best) then ("--max_epochs_no_best " +  '"' + max_epochs_no_best + '"') else ""} \
      ~{if defined(validate_every) then ("--validate_every " +  '"' + validate_every + '"') else ""} \
      ~{if defined(parallel_sequences) then ("--parallel_sequences " +  '"' + parallel_sequences + '"') else ""} \
      ~{if defined(learning_rate) then ("--learning_rate " +  '"' + learning_rate + '"') else ""} \
      ~{if defined(momentum) then ("--momentum " +  '"' + momentum + '"') else ""} \
      ~{if defined(cache_path) then ("--cache_path " +  '"' + cache_path + '"') else ""}
  >>>
  parameter_meta {
    train: "Input training data, either a path to fast5 files or a single netcdf file (default: None)"
    train_list: "Strand list constaining training set (default: None)"
    section: "Section of reads to train (default: template)"
    val: "Input validation data, either a path to fast5 files or a single netcdf file (default: None)"
    val_list: "Strand list constaining validation set (default: None)"
    workspace: "Path for storing training and validation NetCDF files, if not specified a temporary file is used. (default: /tmp)"
    output_prefix_default: "Output prefix (default: None)"
    model: "ANN configuration file (default: /home/ubuntu/.cache /Python-Eggs/nanonet-2.0.0-py2.7-linux-x86_64.egg- tmp/nanonet/data/default_model.tmpl)"
    km_er_length: "Length of kmers to learn. (default: 5)"
    bases: "Alphabet of kmers to learn. (default: ACGT)"
    device: "ID of CUDA device to use. (default: 0)"
    no_cuda: "Use CUDA acceleration. (Default: --no-cuda) (default: False)"
    window: "The detailed list of the entire window. (default: [-1, 0, 1])"
    max_epochs: "Max training epocs, default 500 (default: 500)"
    max_epochs_no_best: "Stop training when no improvment for number of epocs, default 50 (default: 50)"
    validate_every: "Run validation data set every number of epocs. (default: 5)"
    parallel_sequences: "Number of sequences in a min-batch (default: 125)"
    learning_rate: "Learning rate parameters of SGD. (default: 1e-05)"
    momentum: "Momentum parameter of SGD. (default: 0.9)"
    cache_path: "Path for currennt temporary files. (default: /tmp)"
  }
}