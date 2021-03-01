version 1.0

task MedakaFeatures {
  input {
    Boolean? debug
    Boolean? quiet
    Int? batch_size
    Int? chunk_len
    Int? chunk_ovlp
    Array[String] regions
    String? truth
    String? truth_haplo_tag
    Int? threads
    String? label_scheme
    Int? label_scheme_args
    String? feature_encoder
    Int? feature_encoder_args
    String bam
    String output_features_file
  }
  command <<<
    medaka features \
      ~{bam} \
      ~{output_features_file} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(chunk_len) then ("--chunk_len " +  '"' + chunk_len + '"') else ""} \
      ~{if defined(chunk_ovlp) then ("--chunk_ovlp " +  '"' + chunk_ovlp + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(truth) then ("--truth " +  '"' + truth + '"') else ""} \
      ~{if defined(truth_haplo_tag) then ("--truth_haplotag " +  '"' + truth_haplo_tag + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(label_scheme) then ("--label_scheme " +  '"' + label_scheme + '"') else ""} \
      ~{if defined(label_scheme_args) then ("--label_scheme_args " +  '"' + label_scheme_args + '"') else ""} \
      ~{if defined(feature_encoder) then ("--feature_encoder " +  '"' + feature_encoder + '"') else ""} \
      ~{if defined(feature_encoder_args) then ("--feature_encoder_args " +  '"' + feature_encoder_args + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.2.3--py36hbcc4abb_0"
  }
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    batch_size: "Inference batch size. (default: 100)"
    chunk_len: "Chunk length of samples. (default: 10000)"
    chunk_ovlp: "Overlap of chunks. (default: 1000)"
    regions: "Genomic regions to analyse, or a bed file. (default:\\nNone)"
    truth: "Bam of truth aligned to ref to create features for\\ntraining. (default: None)"
    truth_haplo_tag: "Two-letter tag defining haplotype of alignments for\\npolyploidy labels. (default: None)"
    threads: "Number of threads for parallel execution. (default: 1)"
    label_scheme: "Labelling scheme. (default: HaploidLabelScheme)"
    label_scheme_args: "=VAL1 KEY2=VAL2a,VAL2b... [KEY1=VAL1 KEY2=VAL2a,VAL2b... ...]\\nLabel scheme key-word arguments. (default: {})"
    feature_encoder: "FeatureEncoder used to create the features. (default:\\nCountsFeatureEncoder)"
    feature_encoder_args: "=VAL1 KEY2=VAL2a,VAL2b... [KEY1=VAL1 KEY2=VAL2a,VAL2b... ...]\\nFeature encoder key-word arguments. (default: {})\\n"
    bam: "Input alignments."
    output_features_file: "Output features file."
  }
  output {
    File out_stdout = stdout()
  }
}