version 1.0

task InferExperiment.py {
  input {
    String? input_file
    String? ref_gene
    String? sample_size
    String? mapq
  }
  command <<<
    infer_experiment.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(sample_size) then ("--sample-size " +  '"' + sample_size + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Input alignment file in SAM or BAM format"
    ref_gene: "Reference gene model in bed fomat."
    sample_size: "Number of reads sampled from SAM/BAM file. default=200000"
    mapq: "Minimum mapping quality (phred scaled) for an alignment to be considered as \"uniquely mapped\". default=30"
  }
}