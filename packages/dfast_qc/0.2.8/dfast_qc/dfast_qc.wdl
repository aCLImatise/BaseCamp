version 1.0

task DfastQc {
  input {
    File? input_fast_a
    Directory? out_dir
    Int? taxid
    File? ref_dir
    String? prefix
    Int? num_threads
    Boolean? disable_tc
    Boolean? disable_cc
    Boolean? force
    Boolean? debug
    Boolean? show_tax_on
  }
  command <<<
    dfast_qc \
      ~{if defined(input_fast_a) then ("--input_fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(taxid) then ("--taxid " +  '"' + taxid + '"') else ""} \
      ~{if defined(ref_dir) then ("--ref_dir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if (disable_tc) then "--disable_tc" else ""} \
      ~{if (disable_cc) then "--disable_cc" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (show_tax_on) then "--show_taxon" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dfast_qc:0.2.8--hdfd78af_0"
  }
  parameter_meta {
    input_fast_a: "Input FASTA file (raw or gzipped) [required]"
    out_dir: "Output directory (default: OUT)"
    taxid: "NCBI taxid for completeness check. Use '--show_taxon'\\nfor available taxids. (Default: Automatically inferred\\nfrom taxonomy check)"
    ref_dir: "DQC reference directory (default: DQC_REFERENCE_DIR)"
    prefix: "Prefix for output (for debugging use, default: None)"
    num_threads: "Number of threads for parallel processing (default: 1)"
    disable_tc: "Disable taxonomy check using ANI"
    disable_cc: "Disable completeness check using CheckM"
    force: "Force overwriting result"
    debug: "Debug mode"
    show_tax_on: "Show available taxa for competeness check"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}