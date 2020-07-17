version 1.0

task Cstacks {
  input {
    Boolean? in_path
    Boolean? pop_map
    Boolean? number_allowed_build
    Boolean? threads
    Boolean? sample_prefix_load
    Boolean? out_path
    File? catalog
    Boolean? max_gaps
    Boolean? min_aln_len
    Boolean? disable_gapped
    String? k_len
    Boolean? report_m_matches
  }
  command <<<
    cstacks \
      ~{true="--in-path" false="" in_path} \
      ~{true="--popmap" false="" pop_map} \
      ~{true="-n" false="" number_allowed_build} \
      ~{true="--threads" false="" threads} \
      ~{true="-s" false="" sample_prefix_load} \
      ~{true="--outpath" false="" out_path} \
      ~{if defined(catalog) then ("--catalog " +  '"' + catalog + '"') else ""} \
      ~{true="--max-gaps" false="" max_gaps} \
      ~{true="--min-aln-len" false="" min_aln_len} \
      ~{true="--disable-gapped" false="" disable_gapped} \
      ~{if defined(k_len) then ("--k-len " +  '"' + k_len + '"') else ""} \
      ~{true="--report-mmatches" false="" report_m_matches}
  >>>
  parameter_meta {
    in_path: ": path to the directory containing Stacks files."
    pop_map: ": path to a population map file."
    number_allowed_build: ": number of mismatches allowed between sample loci when build the catalog (default 1; suggested: set to ustacks -M)."
    threads: ": enable parallel execution with num_threads threads."
    sample_prefix_load: ": sample prefix from which to load loci into the catalog."
    out_path: ": output path to write results."
    catalog: ": add to an existing catalog."
    max_gaps: ": number of gaps allowed between stacks before merging (default: 2)."
    min_aln_len: ": minimum length of aligned sequence in a gapped alignment (default: 0.80)."
    disable_gapped: ": disable gapped alignments between stacks (default: use gapped alignments)."
    k_len: ": specify k-mer size for matching between between catalog loci (automatically calculated by default)."
    report_m_matches: ": report query loci that match more than one catalog locus."
  }
}