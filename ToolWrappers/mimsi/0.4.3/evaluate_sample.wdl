version 1.0

task EvaluateSample {
  input {
    Boolean? no_cuda
    String? model
    Directory? vector_location
    Boolean? save
    String? save_format
    String? save_location
    File? name
    Int? seed
    String? coverage
    File? confidence_interval
    Boolean? use_attention
  }
  command <<<
    evaluate_sample \
      ~{if (no_cuda) then "--no-cuda" else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(vector_location) then ("--vector-location " +  '"' + vector_location + '"') else ""} \
      ~{if (save) then "--save" else ""} \
      ~{if defined(save_format) then ("--save-format " +  '"' + save_format + '"') else ""} \
      ~{if defined(save_location) then ("--save-location " +  '"' + save_location + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(confidence_interval) then ("--confidence-interval " +  '"' + confidence_interval + '"') else ""} \
      ~{if (use_attention) then "--use-attention" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mimsi:0.4.3--pyhdfd78af_0"
  }
  parameter_meta {
    no_cuda: "Disables CUDA for use off GPU, if this is not\\nspecified the utility will check availability of\\ntorch.cuda"
    model: "name of the saved model weights to load"
    vector_location: "directory containing the generated vectors to evaluate"
    save: "save the results of the evaluation to a numpy array or\\na tsv text file"
    save_format: "save the results of the evaluation to a numpy array or\\nas summary in a tsv text file or both"
    save_location: "The location on the filesystem to save the final\\nresults (default:\\nCurrent_working_directory/mimsi_results/)."
    name: "name of the run, this will be the filename for any\\nsaved results in tsv format with more than one\\nsamples."
    seed: "Random Seed (default: 2)"
    coverage: "Required coverage for both the tumor and the normal.\\nAny coverage in excess of this limit will be randomly\\ndownsampled"
    confidence_interval: "Confidence interval for the estimated MSI Score\\nreported in the tsv output file (default: 0.95)"
    use_attention: "Use attention pooling rather than average pooling to\\naggregate sample embeddings (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_confidence_interval = "${in_confidence_interval}"
  }
}