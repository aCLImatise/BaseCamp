version 1.0

task TrainNetworkpyEvents {
  input {
    Float? adam
    Boolean? no_bad
    Int? batch_size
    Int? chunk_len_range
    Boolean? no_ilf
    Int? l_two
    Float? lr_decay
    Float? min_prob
    Int? n_iteration
    Directory? no_overwrite
    String? re_weight
    Int? save_every
    Float? sd
    Int? seed
    Float? smooth
    Boolean? no_transducer
    Int? drop
    Int? win_len
    String model
    String prefix_output_files
    String hdf_file_containing
  }
  command <<<
    train_network_py events \
      ~{model} \
      ~{prefix_output_files} \
      ~{hdf_file_containing} \
      ~{if defined(adam) then ("--adam " +  '"' + adam + '"') else ""} \
      ~{if (no_bad) then "--no-bad" else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(chunk_len_range) then ("--chunk_len_range " +  '"' + chunk_len_range + '"') else ""} \
      ~{if (no_ilf) then "--no-ilf" else ""} \
      ~{if defined(l_two) then ("--l2 " +  '"' + l_two + '"') else ""} \
      ~{if defined(lr_decay) then ("--lrdecay " +  '"' + lr_decay + '"') else ""} \
      ~{if defined(min_prob) then ("--min_prob " +  '"' + min_prob + '"') else ""} \
      ~{if defined(n_iteration) then ("--niteration " +  '"' + n_iteration + '"') else ""} \
      ~{if (no_overwrite) then "--no-overwrite" else ""} \
      ~{if defined(re_weight) then ("--reweight " +  '"' + re_weight + '"') else ""} \
      ~{if defined(save_every) then ("--save_every " +  '"' + save_every + '"') else ""} \
      ~{if defined(sd) then ("--sd " +  '"' + sd + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(smooth) then ("--smooth " +  '"' + smooth + '"') else ""} \
      ~{if (no_transducer) then "--no-transducer" else ""} \
      ~{if defined(drop) then ("--drop " +  '"' + drop + '"') else ""} \
      ~{if defined(win_len) then ("--winlen " +  '"' + win_len + '"') else ""}
  >>>
  parameter_meta {
    adam: "decay1 decay2\\nParameters for Exponential Decay Adaptive Momementum\\n(default: Values(rate=0.001, decay1=0.9,\\ndecay2=0.999))"
    no_bad: "Force blocks marked as bad to be stays (Default:"
    batch_size: "Number of chunks to run in parallel (default: 100)"
    chunk_len_range: "max\\nRandomly sample chunk sizes between min and max\\n(fraction of chunk size in input file) (default: (0.5,\\n1.0))"
    no_ilf: "Weight objective function by Inverse Label Frequency\\n(Default: --no-ilf) (default: False)"
    l_two: "L2 penalty on parameters (default: 0.0)"
    lr_decay: "Learning rate for batch i is adam.rate / (1.0 + i / n)\\n(default: 5000)"
    min_prob: "Minimum probability allowed for training (default:\\n1e-30)"
    n_iteration: "Maximum number of batches to train for (default:\\n50000)"
    no_overwrite: "Overwrite output directory (Default: --no-overwrite)\\n(default: False)"
    re_weight: "Select chunk according to weights in 'group' (default:\\nweights)"
    save_every: "Save model every x batches (default: 5000)"
    sd: "Standard deviation to initialise with (default: 0.5)"
    seed: "Set random number seed (default: None)"
    smooth: "Smoothing factor for reporting progress (default:\\n0.45)"
    no_transducer: "Train a transducer based model (Default: --transducer)\\n(default: True)"
    drop: "Number of events to drop from start and end of chunk\\nbefore evaluating loss (default: 20)"
    win_len: "Length of window over data (default: 3)"
    model: "File to read python model description from"
    prefix_output_files: "Prefix for output files"
    hdf_file_containing: "HDF5 file containing chunks"
  }
  output {
    File out_stdout = stdout()
    Directory out_no_overwrite = "${in_no_overwrite}"
  }
}