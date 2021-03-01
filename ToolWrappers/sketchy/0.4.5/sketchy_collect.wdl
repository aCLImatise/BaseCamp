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
      ~{if (next_flow) then "--nextflow" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(subset) then ("--subset " +  '"' + subset + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (heat_map) then "--heatmap" else ""} \
      ~{if (time) then "--time" else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (statistics) then "--statistics" else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if defined(image_format) then ("--image_format " +  '"' + image_format + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0"
  }
  parameter_meta {
    directory: "Path to directory to collect {prefix}.data.tsv"
    next_flow: "Predictions are from Sketchy Nextflow"
    prefix: "Prefix for summary files [summary]"
    subset: "When using Nextflow use a subset string for\\nspecific configurationsof ranks & reads: 10,1000 -\\nor a sample prefix: isolate1  [None]"
    reference: "Genotype matrix in same format as output containing\\nfeature truths"
    heat_map: "Visualize results as heatmap"
    time: "Parse the time enhanced output files for Nextflow"
    threshold: "Apply threshold value to median preference score\\nsummary; values below are set to 0 [0.6]"
    statistics: "Read the *.filtered.stats.txt files from the\\nNextflow output and summarise by prefix."
    scale: "Scale plot sizes [1.0]"
    coverage: "Collect coverage information *.coverage.txt from\\nCoverM in Nextflow"
    image_format: "Output image format [pdf]"
  }
  output {
    File out_stdout = stdout()
  }
}