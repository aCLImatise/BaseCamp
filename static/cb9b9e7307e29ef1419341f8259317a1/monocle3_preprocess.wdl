version 1.0

task Monocle3Preprocess {
  input {
    Int? input_object_format
    Int? output_object_format
    Boolean? introspective
    String? method
    Int? num_dim
    String? norm_method
    String? use_genes
    String? residual_model_formula_str
    Float? pseudo_count
    Boolean? no_scaling
    Boolean? verbose
    String input_object
    String output_object
  }
  command <<<
    monocle3 preprocess \
      ~{input_object} \
      ~{output_object} \
      ~{if defined(input_object_format) then ("--input-object-format " +  '"' + input_object_format + '"') else ""} \
      ~{if defined(output_object_format) then ("--output-object-format " +  '"' + output_object_format + '"') else ""} \
      ~{if (introspective) then "--introspective" else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(num_dim) then ("--num-dim " +  '"' + num_dim + '"') else ""} \
      ~{if defined(norm_method) then ("--norm-method " +  '"' + norm_method + '"') else ""} \
      ~{if defined(use_genes) then ("--use-genes " +  '"' + use_genes + '"') else ""} \
      ~{if defined(residual_model_formula_str) then ("--residual-model-formula-str " +  '"' + residual_model_formula_str + '"') else ""} \
      ~{if defined(pseudo_count) then ("--pseudo-count " +  '"' + pseudo_count + '"') else ""} \
      ~{if (no_scaling) then "--no-scaling" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_format: "Format of input object. [Default: cds3]"
    output_object_format: "Format of output object. [Default: cds3]"
    introspective: "Print introspective information of the output object."
    method: "The initial dimension method to use, choose from {PCA, LSI}. [Default: PCA]"
    num_dim: "The dimensionality of the reduced space. [Default: 50]"
    norm_method: "Determines how to transform expression values prior to reducing dimensionality, choose from {log, size_only}. [Default: log]"
    use_genes: "Manually subset the gene pool to these genes for dimensionality reduction, NULL to skip. [Default: NULL]"
    residual_model_formula_str: "A string model formula specifying effects to subtract from the data, NULL to skip. [Default: NULL]"
    pseudo_count: "Amount to increase expression values before dimensionality reduction. [Default: 1]"
    no_scaling: "When this option is NOT set, scale each gene before running trajectory reconstruction."
    verbose: "Emit verbose output."
    input_object: ""
    output_object: ""
  }
  output {
    File out_stdout = stdout()
  }
}