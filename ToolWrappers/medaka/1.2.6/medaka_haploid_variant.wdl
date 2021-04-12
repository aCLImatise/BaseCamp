version 1.0

task MedakaHaploidVariant {
  input {
    Boolean? debug
    Boolean? quiet
    Directory? output_dir
    Int? threads
    Int? batch_size
    Int? chunk_len
    Int? chunk_ovlp
    Int? model
    Int? chunk_size
    Int? pad
    String? mode
    String reads_fast_x
    String ref_fast_a
  }
  command <<<
    medaka_haploid_variant \
      ~{reads_fast_x} \
      ~{ref_fast_a} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(chunk_len) then ("--chunk_len " +  '"' + chunk_len + '"') else ""} \
      ~{if defined(chunk_ovlp) then ("--chunk_ovlp " +  '"' + chunk_ovlp + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk_size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.2.6--py38h64b100c_0"
  }
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    output_dir: "Output directory, should not exist. (default:\\nmedaka_haploid_variant)"
    threads: "Number of threads used by inference. (default: 1)"
    batch_size: "Inference batch size. (default: 100)"
    chunk_len: "Chunk length of samples. (default: 10000)"
    chunk_ovlp: "Overlap of chunks. (default: 1000)"
    model: "Model to use. {r103_min_high_g345, r103_min_high_g360,\\nr103_prom_high_g360, r103_prom_snp_g3210,\\nr103_prom_variant_g3210, r10_min_high_g303,\\nr10_min_high_g340, r941_min_fast_g303,\\nr941_min_high_g303, r941_min_high_g330,\\nr941_min_high_g340_rle, r941_min_high_g344,\\nr941_min_high_g351, r941_min_high_g360,\\nr941_prom_fast_g303, r941_prom_high_g303,\\nr941_prom_high_g330, r941_prom_high_g344,\\nr941_prom_high_g360, r941_prom_high_g4011,\\nr941_prom_snp_g303, r941_prom_snp_g322,\\nr941_prom_snp_g360, r941_prom_variant_g303,\\nr941_prom_variant_g322, r941_prom_variant_g360}\\n(default: r941_min_high_g360)"
    chunk_size: "Size of consensus chunks (default: 100000)"
    pad: "Reference chunks are chunk_size + pad. (default:\\n10000)"
    mode: "Edlib alignment mode. NW: global in consensus and ref.\\nHW: global in consensus, local in ref. HWT: same as\\nHW, but alignments trimmed to start and end on a\\nmatch. (default: HWT)\\n"
    reads_fast_x: "Input reads (can be gzipped)."
    ref_fast_a: "Reference sequence .fasta file."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}