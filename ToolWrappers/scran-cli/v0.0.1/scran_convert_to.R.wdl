version 1.0

task ScranconverttoR {
  input {
    File? input_sce_object
    String? type
    String? assay_type
    String? get_spikes
    File? output_converted
  }
  command <<<
    scran_convert_to_R \
      ~{if defined(input_sce_object) then ("--input-sce-object " +  '"' + input_sce_object + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(assay_type) then ("--assay-type " +  '"' + assay_type + '"') else ""} \
      ~{if defined(get_spikes) then ("--get-spikes " +  '"' + get_spikes + '"') else ""} \
      ~{if defined(output_converted) then ("--output-converted " +  '"' + output_converted + '"') else ""}
  >>>
  parameter_meta {
    input_sce_object: "Path to the input SCE object in rds format."
    type: "A string specifying the analysis for which the object should be prepared. Any of: \\\"edgeR\\\", \\\"DESeq2\\\", \\\"monocle\\\"."
    assay_type: "A string specifying which assay of x should be put in the returned object. For edgeR and DESeq2, assay is set to \\\"counts\\\" such that count data is stored in the output object"
    get_spikes: "Logical specifying wether to perform spike-ins filtering(FALSE) or not (TRUE)."
    output_converted: "Path to the converted object stored as RDS."
  }
  output {
    File out_stdout = stdout()
  }
}