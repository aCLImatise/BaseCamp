version 1.0

task InferExperimentpy {
  input {
    File? input_file
    String? ref_gene
    Int? sample_size
    Int? mapq
  }
  command <<<
    infer_experiment_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(sample_size) then ("--sample-size " +  '"' + sample_size + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Input alignment file in SAM or BAM format"
    ref_gene: "Reference gene model in bed fomat."
    sample_size: "Number of reads sampled from SAM/BAM file.\\ndefault=200000"
    mapq: "Minimum mapping quality (phred scaled) for an\\nalignment to be considered as \\\"uniquely mapped\\\".\\ndefault=30\\n"
  }
  output {
    File out_stdout = stdout()
  }
}