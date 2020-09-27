version 1.0

task ScrancomputespikefactorsR {
  input {
    File? input_sce_object
    String? type
    String? assay_type
    Int? general_use
    Int? output_sce_object
  }
  command <<<
    scran_compute_spike_factors_R \
      ~{if defined(input_sce_object) then ("--input-sce-object " +  '"' + input_sce_object + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(assay_type) then ("--assay-type " +  '"' + assay_type + '"') else ""} \
      ~{if defined(general_use) then ("--general_use " +  '"' + general_use + '"') else ""} \
      ~{if defined(output_sce_object) then ("--output-sce-object " +  '"' + output_sce_object + '"') else ""}
  >>>
  parameter_meta {
    input_sce_object: "Path to the input SCE object in rds format."
    type: "A character vector specifying which spike-in sets to use. Default: \\\"ERCC\\\"."
    assay_type: "Specify which assay values to use. Default: \\\"logcounts\\\"."
    general_use: "A logical scalar indicating whether the size factors should be stored for general use by all genes."
    output_sce_object: "Path to the output SCE object containing the vector of size factors in sizeFactors(x)."
  }
  output {
    File out_stdout = stdout()
  }
}