version 1.0

task Cstacks {
  input {
    Boolean? in_path
    Boolean? pop_map
    Boolean? number_mismatches_allowed
    Boolean? threads
    Boolean? sample_prefix_load
    File? out_path
    File? catalog
    Boolean? max_gaps
    Boolean? min_aln_len
    Boolean? disable_gapped
    Int? k_len
    Boolean? report_m_matches
  }
  command <<<
    cstacks \
      ~{if (in_path) then "--in-path" else ""} \
      ~{if (pop_map) then "--popmap" else ""} \
      ~{if (number_mismatches_allowed) then "-n" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (sample_prefix_load) then "-s" else ""} \
      ~{if (out_path) then "--outpath" else ""} \
      ~{if defined(catalog) then ("--catalog " +  '"' + catalog + '"') else ""} \
      ~{if (max_gaps) then "--max-gaps" else ""} \
      ~{if (min_aln_len) then "--min-aln-len" else ""} \
      ~{if (disable_gapped) then "--disable-gapped" else ""} \
      ~{if defined(k_len) then ("--k-len " +  '"' + k_len + '"') else ""} \
      ~{if (report_m_matches) then "--report-mmatches" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_path: ": path to the directory containing Stacks files."
    pop_map: ": path to a population map file."
    number_mismatches_allowed: ": number of mismatches allowed between sample loci when build the catalog (default 1; suggested: set to ustacks -M)."
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
  output {
    File out_stdout = stdout()
    File out_out_path = "${in_out_path}"
  }
}