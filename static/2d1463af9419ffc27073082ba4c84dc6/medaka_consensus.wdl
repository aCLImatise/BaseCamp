version 1.0

task MedakaConsensus {
  input {
    Boolean? debug
    Boolean? quiet
    String? batch_size
    Array[String] regions
    String? chunk_len
    String? chunk_ovlp
    String? model
    Boolean? disable_cu_dnn
    String? threads
    Boolean? check_output
    Boolean? save_features
    String? rg
    String? tag_name
    String? tag_value
    Boolean? tag_keep_missing
    String bam
    String output_file
  }
  command <<<
    medaka consensus \
      ~{bam} \
      ~{output_file} \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(chunk_len) then ("--chunk_len " +  '"' + chunk_len + '"') else ""} \
      ~{if defined(chunk_ovlp) then ("--chunk_ovlp " +  '"' + chunk_ovlp + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{true="--disable_cudnn" false="" disable_cu_dnn} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--check_output" false="" check_output} \
      ~{true="--save_features" false="" save_features} \
      ~{if defined(rg) then ("--RG " +  '"' + rg + '"') else ""} \
      ~{if defined(tag_name) then ("--tag_name " +  '"' + tag_name + '"') else ""} \
      ~{if defined(tag_value) then ("--tag_value " +  '"' + tag_value + '"') else ""} \
      ~{true="--tag_keep_missing" false="" tag_keep_missing}
  >>>
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    batch_size: "Inference batch size. (default: 100)"
    regions: "Genomic regions to analyse, or a bed file. (default: None)"
    chunk_len: "Chunk length of samples. (default: 10000)"
    chunk_ovlp: "Overlap of chunks. (default: 1000)"
    model: "Model to use. {r103_min_high_g345, r103_min_high_g360, r103_prom_high_g360, r103_prom_snp_g3210, r103_prom_variant_g3210, r10_min_high_g303, r10_min_high_g340, r941_min_fast_g303, r941_min_high_g303, r941_min_high_g330, r941_min_high_g340_rle, r941_min_high_g344, r941_min_high_g351, r941_min_high_g360, r941_prom_fast_g303, r941_prom_high_g303, r941_prom_high_g330, r941_prom_high_g344, r941_prom_high_g360, r941_prom_snp_g303, r941_prom_snp_g322, r941_prom_snp_g360, r941_prom_variant_g303, r941_prom_variant_g322, r941_prom_variant_g360} (default: r941_min_high_g360)"
    disable_cu_dnn: "Disable use of cuDNN model layers. (default: False)"
    threads: "Number of threads used by inference. (default: 1)"
    check_output: "Verify integrity of output file after inference. (default: False)"
    save_features: "Save features with consensus probabilities. (default: False)"
    rg: "Read group to select. (default: None)"
    tag_name: "Two-letter tag name. (default: None)"
    tag_value: "Value of tag. (default: None)"
    tag_keep_missing: "Keep alignments when tag is missing. (default: False)"
    bam: "Input alignments."
    output_file: "Output file."
  }
}