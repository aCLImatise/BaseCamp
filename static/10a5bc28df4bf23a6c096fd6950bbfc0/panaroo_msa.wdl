version 1.0

task Panaroomsa {
  input {
    Int? threads
    Boolean? verbose
    Directory? out_dir
    String? alignment
    String? aligner
    Float? core_threshold
    String generate_pana_roo_msa
  }
  command <<<
    panaroo_msa \
      ~{generate_pana_roo_msa} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(core_threshold) then ("--core_threshold " +  '"' + core_threshold + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/panaroo:1.2.7--pyhdfd78af_0"
  }
  parameter_meta {
    threads: "number of threads to use (default=1)"
    verbose: "print additional output"
    out_dir: "location of the Panaroo output directory"
    alignment: "Output alignments of core genes or all genes. Options\\nare 'core' and 'pan'. Default: 'None'"
    aligner: "Specify an aligner. Options:'prank', 'clustal', and\\ndefault: 'mafft'"
    core_threshold: "Core-genome sample threshold (default=0.95)\\n"
    generate_pana_roo_msa: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}