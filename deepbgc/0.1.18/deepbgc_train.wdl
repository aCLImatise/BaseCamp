version 1.0

task DeepbgcTrain {
  input {
    String? model
    String? target
    String? output_trained_path
    String? log
    String? classes
    String? config
    String? validation
    Int? verbose
    Boolean? debug
    String inputs
  }
  command <<<
    deepbgc train \
      ~{inputs} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(output_trained_path) then ("--output " +  '"' + output_trained_path + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(classes) then ("--classes " +  '"' + classes + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(validation) then ("--validation " +  '"' + validation + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    model: "Path to JSON model config file"
    target: "Target column to predict in sequence prediction"
    output_trained_path: "Output trained model file path"
    log: "Progress log output path (e.g. TensorBoard)"
    classes: "Class TSV file path - train a sequence classifier using provided classes (binary columns), indexed by sequence_id column"
    config: "CONFIG Variables in model JSON file to replace (e.g. --config PFAM2VEC path/to/pfam2vec.csv)"
    validation: "Validation sequence file path. Repeat to specify multiple files"
    verbose: "Verbosity level: 0=none, 1=progress bar, 2=once per epoch (default: 2)"
    debug: ""
    inputs: "Training sequences (Pfam TSV) file paths"
  }
}