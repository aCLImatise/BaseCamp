version 1.0

task DeepbgcTrain {
  input {
    File? debug
    String? target
    File? output_trained_model
    File? log
    File? classes
    File? config
    File? validation
    Int? verbose
    String inputs
  }
  command <<<
    deepbgc train \
      ~{inputs} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(output_trained_model) then ("--output " +  '"' + output_trained_model + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(classes) then ("--classes " +  '"' + classes + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(validation) then ("--validation " +  '"' + validation + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepbgc:0.1.22--py_0"
  }
  parameter_meta {
    debug: "Path to JSON model config file"
    target: "Target column to predict in sequence prediction"
    output_trained_model: "Output trained model file path"
    log: "Progress log output path (e.g. TensorBoard)"
    classes: "Class TSV file path - train a sequence classifier using provided classes (binary columns), indexed by sequence_id column"
    config: "CONFIG\\nVariables in model JSON file to replace (e.g. --config PFAM2VEC path/to/pfam2vec.csv)"
    validation: "Validation sequence file path. Repeat to specify multiple files"
    verbose: "Verbosity level: 0=none, 1=progress bar, 2=once per epoch (default: 2)"
    inputs: "Training sequences (Pfam TSV) file paths"
  }
  output {
    File out_stdout = stdout()
    File out_output_trained_model = "${in_output_trained_model}"
    File out_log = "${in_log}"
  }
}