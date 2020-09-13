version 1.0

task Sstacks {
  input {
    Boolean? in_path
    Boolean? pop_map
    Boolean? sample
    Boolean? catalog
    Boolean? threads
    File? out_path
    Boolean? verify_haplotype_matching
    Boolean? disable_gapped
  }
  command <<<
    sstacks \
      ~{if (in_path) then "--in-path" else ""} \
      ~{if (pop_map) then "--popmap" else ""} \
      ~{if (sample) then "--sample" else ""} \
      ~{if (catalog) then "--catalog" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (out_path) then "--out-path" else ""} \
      ~{if (verify_haplotype_matching) then "-x" else ""} \
      ~{if (disable_gapped) then "--disable-gapped" else ""}
  >>>
  parameter_meta {
    in_path: ": path to the directory containing Stacks files."
    pop_map: ": path to a population map file from which to take sample names."
    sample: ": filename prefix from which to load sample loci."
    catalog: ": path to the catalog."
    threads: ": enable parallel execution with n_threads threads."
    out_path: ": output path to write results."
    verify_haplotype_matching: ": don't verify haplotype of matching locus."
    disable_gapped: ": disable gapped alignments between stacks (default: enable gapped alignments)."
  }
  output {
    File out_stdout = stdout()
    File out_out_path = "${in_out_path}"
  }
}