version 1.0

task SketchyCollect {
  input {
    File? directory
    Boolean? next_flow
    String? prefix
    String? subset
    File? reference
    Boolean? heat_map
    Boolean? time
    Float? threshold
    Boolean? statistics
    Float? scale
    Boolean? coverage
    String? image_format
  }
  command <<<
    sketchy collect \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{true="--nextflow" false="" next_flow} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(subset) then ("--subset " +  '"' + subset + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--heatmap" false="" heat_map} \
      ~{true="--time" false="" time} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{true="--statistics" false="" statistics} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{true="--coverage" false="" coverage} \
      ~{if defined(image_format) then ("--image_format " +  '"' + image_format + '"') else ""}
  >>>
  parameter_meta {
    directory: "Path to directory to collect {prefix}.data.tsv"
    next_flow: "Predictions are from Sketchy Nextflow"
    prefix: "Prefix for summary files [summary]"
    subset: "When using Nextflow use a subset string for specific configurationsof ranks & reads: 10,1000 - or a sample prefix: isolate1  [None]"
    reference: "Genotype matrix in same format as output containing feature truths"
    heat_map: "Visualize results as heatmap"
    time: "Parse the time enhanced output files for Nextflow"
    threshold: "Apply threshold value to median preference score summary; values below are set to 0 [0.6]"
    statistics: "Read the *.filtered.stats.txt files from the Nextflow output and summarise by prefix."
    scale: "Scale plot sizes [1.0]"
    coverage: "Collect coverage information *.coverage.txt from CoverM in Nextflow"
    image_format: "Output image format [pdf]"
  }
}