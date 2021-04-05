version 1.0

task MedakaTrain {
  input {
    Boolean? debug
    Boolean? quiet
    String? train_name
    Int? model
    Int? epochs
    Int? batch_size
    Int? max_samples
    Int? mini_epochs
    String? seed
    Int? threads_io
    Int? device
    String? optimizer
    Int? optim_args
    Float? validation_split
    Array[String] validation_features
    String features
  }
  command <<<
    medaka train \
      ~{features} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(train_name) then ("--train_name " +  '"' + train_name + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(epochs) then ("--epochs " +  '"' + epochs + '"') else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(max_samples) then ("--max_samples " +  '"' + max_samples + '"') else ""} \
      ~{if defined(mini_epochs) then ("--mini_epochs " +  '"' + mini_epochs + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads_io) then ("--threads_io " +  '"' + threads_io + '"') else ""} \
      ~{if defined(device) then ("--device " +  '"' + device + '"') else ""} \
      ~{if defined(optimizer) then ("--optimizer " +  '"' + optimizer + '"') else ""} \
      ~{if defined(optim_args) then ("--optim_args " +  '"' + optim_args + '"') else ""} \
      ~{if defined(validation_split) then ("--validation_split " +  '"' + validation_split + '"') else ""} \
      ~{if defined(validation_features) then ("--validation_features " +  '"' + validation_features + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.2.5--py38h64b100c_0"
  }
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    train_name: "Name for training run. (default: keras_train)"
    model: "Model definition and initial weights .hdf, or .yml\\nwith kwargs to build model. {r103_min_high_g345,\\nr103_min_high_g360, r103_prom_high_g360,\\nr103_prom_snp_g3210, r103_prom_variant_g3210,\\nr10_min_high_g303, r10_min_high_g340,\\nr941_min_fast_g303, r941_min_high_g303,\\nr941_min_high_g330, r941_min_high_g340_rle,\\nr941_min_high_g344, r941_min_high_g351,\\nr941_min_high_g360, r941_prom_fast_g303,\\nr941_prom_high_g303, r941_prom_high_g330,\\nr941_prom_high_g344, r941_prom_high_g360,\\nr941_prom_high_g4011, r941_prom_snp_g303,\\nr941_prom_snp_g322, r941_prom_snp_g360,\\nr941_prom_variant_g303, r941_prom_variant_g322,\\nr941_prom_variant_g360} (default: None)"
    epochs: "Maximum number of trainig epochs. (default: 5000)"
    batch_size: "Training batch size. (default: 100)"
    max_samples: "Only train on max_samples. (default: inf)"
    mini_epochs: "Reduce fraction of data per epoch by this factor\\n(default: 1)"
    seed: "Seed for random batch shuffling. (default: None)"
    threads_io: "Number of threads for parallel IO. (default: 1)"
    device: "GPU device to use. (default: 0)"
    optimizer: "Optimizer to use. (default: rmsprop)"
    optim_args: "=VAL1,KEY2=VAL2... [KEY1=VAL1,KEY2=VAL2... ...]\\nOptimizer key-word arguments. (default: None)"
    validation_split: "Fraction of data to validate on. (default: 0.2)"
    validation_features: "Paths to validation data (default: None)\\n"
    features: "Paths to training data."
  }
  output {
    File out_stdout = stdout()
  }
}