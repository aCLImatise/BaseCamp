version 1.0

task PanarooMsa {
  input {
    String? threads
    Boolean? verbose
    String? out_dir
    String? alignment
    String? aligner
    String? core_threshold
    String generate_pana_roo_msa
  }
  command <<<
    panaroo-msa \
      ~{generate_pana_roo_msa} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(core_threshold) then ("--core_threshold " +  '"' + core_threshold + '"') else ""}
  >>>
  parameter_meta {
    threads: "number of threads to use (default=1)"
    verbose: "print additional output"
    out_dir: "location of the Panaroo output directory"
    alignment: "Output alignments of core genes or all genes. Options are 'core' and 'pan'. Default: 'None'"
    aligner: "Specify an aligner. Options:'prank', 'clustal', and default: 'mafft'"
    core_threshold: "Core-genome sample threshold (default=0.95)"
    generate_pana_roo_msa: ""
  }
}