version 1.0

task Sstacks {
  input {
    Boolean? in_path
    Boolean? pop_map
    Boolean? sample
    Boolean? catalog
    Boolean? threads
    Boolean? out_path
    Boolean? verify_haplotype_matching
    Boolean? disable_gapped
  }
  command <<<
    sstacks \
      ~{true="--in-path" false="" in_path} \
      ~{true="--popmap" false="" pop_map} \
      ~{true="--sample" false="" sample} \
      ~{true="--catalog" false="" catalog} \
      ~{true="--threads" false="" threads} \
      ~{true="--out-path" false="" out_path} \
      ~{true="-x" false="" verify_haplotype_matching} \
      ~{true="--disable-gapped" false="" disable_gapped}
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
}