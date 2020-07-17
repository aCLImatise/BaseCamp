version 1.0

task MhcflurryClass1TrainPresentationModels {
  input {
    File? data
    String? out_models_dir
    String? affinity_predictor
    String? processing_predictor_with_flanks
    String? processing_predictor_without_flanks
    String? verbosity
    Boolean? debug
    String? hla_column
    String? target_column
    String train
    String class_one
    String presentation
    String models_dot
  }
  command <<<
    mhcflurry-class1-train-presentation-models \
      ~{train} \
      ~{class_one} \
      ~{presentation} \
      ~{models_dot} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(out_models_dir) then ("--out-models-dir " +  '"' + out_models_dir + '"') else ""} \
      ~{if defined(affinity_predictor) then ("--affinity-predictor " +  '"' + affinity_predictor + '"') else ""} \
      ~{if defined(processing_predictor_with_flanks) then ("--processing-predictor-with-flanks " +  '"' + processing_predictor_with_flanks + '"') else ""} \
      ~{if defined(processing_predictor_without_flanks) then ("--processing-predictor-without-flanks " +  '"' + processing_predictor_without_flanks + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{if defined(hla_column) then ("--hla-column " +  '"' + hla_column + '"') else ""} \
      ~{if defined(target_column) then ("--target-column " +  '"' + target_column + '"') else ""}
  >>>
  parameter_meta {
    data: "Training data CSV. Expected columns: peptide, n_flank, c_flank, hit"
    out_models_dir: "Directory to write models and manifest"
    affinity_predictor: "Affinity predictor models dir"
    processing_predictor_with_flanks: "Processing predictor with flanks"
    processing_predictor_without_flanks: "Processing predictor without flanks"
    verbosity: "Default: 1"
    debug: "Launch python debugger on error"
    hla_column: "Column in data giving space-separated MHC I alleles"
    target_column: "Column in data giving hit (1) vs decoy (0)"
    train: ""
    class_one: ""
    presentation: ""
    models_dot: ""
  }
}