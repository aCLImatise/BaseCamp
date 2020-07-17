version 1.0

task GeneBodyCoverage2.py {
  input {
    String? input_file
    String? ref_gene
    String? out_prefix
    String? graph_type
  }
  command <<<
    geneBody_coverage2.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(graph_type) then ("--graph-type " +  '"' + graph_type + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Coverage signal file in bigwig format"
    ref_gene: "Reference gene model in bed format. [required]"
    out_prefix: "Prefix of output files(s). [required]"
    graph_type: "Graphic file type in \"pdf\", \"jpeg\", \"bmp\", \"bmp\", \"tiff\" or \"png\".default=pdf [optional]"
  }
}