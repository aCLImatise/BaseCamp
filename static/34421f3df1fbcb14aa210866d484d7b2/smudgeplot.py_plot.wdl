version 1.0

task SmudgeplotpyPlot {
  input {
    String? pattern_used_name
    String? remove_kmer_pairs
    Int? lower_boundary_used
    String? expected_haploid_coverage
    String? title
    Int? nbins
    Int? the_length_kmer
    Boolean? homozygous
    String in_file
  }
  command <<<
    smudgeplot_py plot \
      ~{in_file} \
      ~{if defined(pattern_used_name) then ("-o " +  '"' + pattern_used_name + '"') else ""} \
      ~{if defined(remove_kmer_pairs) then ("-q " +  '"' + remove_kmer_pairs + '"') else ""} \
      ~{if defined(lower_boundary_used) then ("-L " +  '"' + lower_boundary_used + '"') else ""} \
      ~{if defined(expected_haploid_coverage) then ("-n " +  '"' + expected_haploid_coverage + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(nbins) then ("-nbins " +  '"' + nbins + '"') else ""} \
      ~{if defined(the_length_kmer) then ("-k " +  '"' + the_length_kmer + '"') else ""} \
      ~{if (homozygous) then "--homozygous" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smudgeplot_rn:0.2.5_RN--py39r40h516909a_0"
  }
  parameter_meta {
    pattern_used_name: "The pattern used to name the output (smudgeplot)."
    remove_kmer_pairs: "Remove kmer pairs with coverage over the specified\\nquantile; (default none)."
    lower_boundary_used: "The lower boundary used when dumping kmers (default\\nmin(total_pair_cov) / 2)."
    expected_haploid_coverage: "The expected haploid coverage (default estimated from\\ndata)."
    title: "name printed at the top of the smudgeplot (default\\nnone)."
    nbins: "The number of nbins used for smudgeplot matrix (nbins\\nx nbins) (default autodetection)."
    the_length_kmer: "The length of the kmer."
    homozygous: "Assume no heterozygosity in the genome - plotting a\\nparalog structure; (default False).\\n"
    in_file: "name of the input tsv file with covarages (default\\n\\\"coverages_2.tsv\\\").\\\""
  }
  output {
    File out_stdout = stdout()
  }
}