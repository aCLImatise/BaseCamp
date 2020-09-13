version 1.0

task Monocle3ReduceDim {
  input {
    Int? input_object_format
    Int? output_object_format
    Boolean? introspective
    Int? max_components
    String? reduction_method
    String? preprocess_method
    Int? cores
    Boolean? verbose
    String input_object
    String output_object
  }
  command <<<
    monocle3 reduceDim \
      ~{input_object} \
      ~{output_object} \
      ~{if defined(input_object_format) then ("--input-object-format " +  '"' + input_object_format + '"') else ""} \
      ~{if defined(output_object_format) then ("--output-object-format " +  '"' + output_object_format + '"') else ""} \
      ~{if (introspective) then "--introspective" else ""} \
      ~{if defined(max_components) then ("--max-components " +  '"' + max_components + '"') else ""} \
      ~{if defined(reduction_method) then ("--reduction-method " +  '"' + reduction_method + '"') else ""} \
      ~{if defined(preprocess_method) then ("--preprocess-method " +  '"' + preprocess_method + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_object_format: "Format of input object. [Default: cds3]"
    output_object_format: "Format of output object. [Default: cds3]"
    introspective: "Print introspective information of the output object."
    max_components: "The dimensionality of the reduced space. [Default 2]"
    reduction_method: "The algorithm to use for dimensionality reduction, choose from {UMAP, tSNE, PCA, LSI}. [Default: UMAP]"
    preprocess_method: "The preprocessing method used on the data, choose from {PCA, LSI}. [Default: PCA]"
    cores: "The number of cores to be used for dimensionality reduction. [Default: 1]"
    verbose: "Emit verbose output."
    input_object: ""
    output_object: ""
  }
  output {
    File out_stdout = stdout()
  }
}