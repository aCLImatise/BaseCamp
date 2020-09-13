version 1.0

task Nanonettrain {
  input {
    File? train
    String? train_list
    String? section
    File? val
    String? val_list
    File? workspace
    String? output_prefix_default
    File? model
    Int? km_er_length
    String? bases
    Int? device
    Boolean? no_cuda
    Array[String] window
    Int? max_epochs
    Int? max_epochs_no_best
    Int? validate_every
    Int? parallel_sequences
    Float? learning_rate
    Float? momentum
    File? cache_path
    Float eggs_slash_nano_net_two_dot_zero_dot_zero_py_two_dot_seven_linux_x_eight_six_six_four_dot_egg
  }
  command <<<
    nanonettrain \
      ~{eggs_slash_nano_net_two_dot_zero_dot_zero_py_two_dot_seven_linux_x_eight_six_six_four_dot_egg} \
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
      ~{if (no_cuda) then "--no-cuda" else ""} \
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
    train: "Input training data, either a path to fast5 files or a\\nsingle netcdf file (default: None)"
    train_list: "Strand list constaining training set (default: None)"
    section: "Section of reads to train (default: template)"
    val: "Input validation data, either a path to fast5 files or\\na single netcdf file (default: None)"
    val_list: "Strand list constaining validation set (default: None)"
    workspace: "Path for storing training and validation NetCDF files,\\nif not specified a temporary file is used. (default:\\n/tmp)"
    output_prefix_default: "Output prefix (default: None)"
    model: "ANN configuration file (default: /root/.cache/Python-"
    km_er_length: "Length of kmers to learn. (default: 5)"
    bases: "Alphabet of kmers to learn. (default: ACGT)"
    device: "ID of CUDA device to use. (default: 0)"
    no_cuda: "Use CUDA acceleration. (Default: --no-cuda) (default:\\nFalse)"
    window: "The detailed list of the entire window. (default: [-1,\\n0, 1])"
    max_epochs: "Max training epocs, default 500 (default: 500)"
    max_epochs_no_best: "Stop training when no improvment for number of epocs,\\ndefault 50 (default: 50)"
    validate_every: "Run validation data set every number of epocs.\\n(default: 5)"
    parallel_sequences: "Number of sequences in a min-batch (default: 125)"
    learning_rate: "Learning rate parameters of SGD. (default: 1e-05)"
    momentum: "Momentum parameter of SGD. (default: 0.9)"
    cache_path: "Path for currennt temporary files. (default: /tmp)\\n"
    eggs_slash_nano_net_two_dot_zero_dot_zero_py_two_dot_seven_linux_x_eight_six_six_four_dot_egg: "tmp/nanonet/data/default_model.tmpl)"
  }
  output {
    File out_stdout = stdout()
  }
}