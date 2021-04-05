version 1.0

task MedakaSmolecule {
  input {
    Boolean? debug
    Boolean? quiet
    Int? batch_size
    Int? chunk_len
    Int? chunk_ovlp
    Int? model
    String? method
    Int? depth
    Int? length
    Int? threads
    File? check_output
    Boolean? save_features
    String output_directory
    String fast_a
  }
  command <<<
    medaka smolecule \
      ~{output_directory} \
      ~{fast_a} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(chunk_len) then ("--chunk_len " +  '"' + chunk_len + '"') else ""} \
      ~{if defined(chunk_ovlp) then ("--chunk_ovlp " +  '"' + chunk_ovlp + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (check_output) then "--check_output" else ""} \
      ~{if (save_features) then "--save_features" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.2.5--py38h64b100c_0"
  }
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    batch_size: "Inference batch size. (default: 100)"
    chunk_len: "Chunk length of samples. (default: 1000)"
    chunk_ovlp: "Overlap of chunks. (default: 500)"
    model: "Model to use. {r103_min_high_g345, r103_min_high_g360,\\nr103_prom_high_g360, r103_prom_snp_g3210,\\nr103_prom_variant_g3210, r10_min_high_g303,\\nr10_min_high_g340, r941_min_fast_g303,\\nr941_min_high_g303, r941_min_high_g330,\\nr941_min_high_g340_rle, r941_min_high_g344,\\nr941_min_high_g351, r941_min_high_g360,\\nr941_prom_fast_g303, r941_prom_high_g303,\\nr941_prom_high_g330, r941_prom_high_g344,\\nr941_prom_high_g360, r941_prom_high_g4011,\\nr941_prom_snp_g303, r941_prom_snp_g322,\\nr941_prom_snp_g360, r941_prom_variant_g303,\\nr941_prom_variant_g322, r941_prom_variant_g360}\\n(default: r941_min_high_g360)"
    method: "Pre-medaka consensus generation method. (default:\\nspoa)"
    depth: "Minimum subread count. (default: 3)"
    length: "Minimum median subread length. (default: 400)"
    threads: "Number of threads used by inference. (default: 1)"
    check_output: "Verify integrity of output file after inference.\\n(default: False)"
    save_features: "Save features with consensus probabilities. (default:\\nFalse)\\n"
    output_directory: "Output directory."
    fast_a: "Single-molecule reads, one file per read."
  }
  output {
    File out_stdout = stdout()
    File out_check_output = "${in_check_output}"
  }
}