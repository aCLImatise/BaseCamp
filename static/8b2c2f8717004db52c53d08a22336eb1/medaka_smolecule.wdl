version 1.0

task MedakaSmolecule {
  input {
    Boolean? debug
    Boolean? quiet
    Int? batch_size
    Array[String] regions
    Int? chunk_len
    Int? chunk_ovlp
    Int? model
    Boolean? disable_cu_dnn
    Int? depth
    Int? length
    Int? threads
    File? check_output
    Boolean? save_features
    String fast_a
    String output_directory
  }
  command <<<
    medaka smolecule \
      ~{fast_a} \
      ~{output_directory} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(chunk_len) then ("--chunk_len " +  '"' + chunk_len + '"') else ""} \
      ~{if defined(chunk_ovlp) then ("--chunk_ovlp " +  '"' + chunk_ovlp + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if (disable_cu_dnn) then "--disable_cudnn" else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (check_output) then "--check_output" else ""} \
      ~{if (save_features) then "--save_features" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    batch_size: "Inference batch size. (default: 100)"
    regions: "Genomic regions to analyse, or a bed file. (default:\\nNone)"
    chunk_len: "Chunk length of samples. (default: 1000)"
    chunk_ovlp: "Overlap of chunks. (default: 500)"
    model: "Model to use. {r103_min_high_g345, r103_min_high_g360,\\nr103_prom_high_g360, r103_prom_snp_g3210,\\nr103_prom_variant_g3210, r10_min_high_g303,\\nr10_min_high_g340, r941_min_fast_g303,\\nr941_min_high_g303, r941_min_high_g330,\\nr941_min_high_g340_rle, r941_min_high_g344,\\nr941_min_high_g351, r941_min_high_g360,\\nr941_prom_fast_g303, r941_prom_high_g303,\\nr941_prom_high_g330, r941_prom_high_g344,\\nr941_prom_high_g360, r941_prom_snp_g303,\\nr941_prom_snp_g322, r941_prom_snp_g360,\\nr941_prom_variant_g303, r941_prom_variant_g322,\\nr941_prom_variant_g360} (default: r941_min_high_g360)"
    disable_cu_dnn: "Disable use of cuDNN model layers. (default: False)"
    depth: "Minimum subread count. (default: 3)"
    length: "Minimum median subread length. (default: 400)"
    threads: "Number of threads used by inference. (default: 1)"
    check_output: "Verify integrity of output file after inference.\\n(default: False)"
    save_features: "Save features with consensus probabilities. (default:\\nFalse)\\n"
    fast_a: "Single-molecule reads, one file per read."
    output_directory: "Output directory."
  }
  output {
    File out_stdout = stdout()
    File out_check_output = "${in_check_output}"
  }
}