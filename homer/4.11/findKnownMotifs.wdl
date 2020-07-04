version 1.0

task FindKnownMotifs.pl {
  input {
    String? known_motif_file
    Boolean? strand
    String? stat
    Boolean? p_value
    Boolean? optimize
    Boolean? homer
    Boolean? homer_two
    Boolean? number_use_homer
    Boolean? cache
    Boolean? bits
    Boolean? dbview
    Boolean? seq_logo
    Boolean? rna
    String? s
    String? g
    String? o
  }
  command <<<
    findKnownMotifs.pl \
      ~{if defined(known_motif_file) then ("-m " +  '"' + known_motif_file + '"') else ""} \
      ~{true="-strand" false="" strand} \
      ~{if defined(stat) then ("-stat " +  '"' + stat + '"') else ""} \
      ~{true="-pvalue" false="" p_value} \
      ~{true="-optimize" false="" optimize} \
      ~{true="-homer" false="" homer} \
      ~{true="-homer2" false="" homer_two} \
      ~{true="-p" false="" number_use_homer} \
      ~{true="-cache" false="" cache} \
      ~{true="-bits" false="" bits} \
      ~{true="-dbview" false="" dbview} \
      ~{true="-seqlogo" false="" seq_logo} \
      ~{true="-rna" false="" rna} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    known_motif_file: "(Known motif file, default: /tmp/tmpyjsfxisi/share/homer-4.11-1/.//data/knownTFs/known.motifs)"
    strand: "<both|+|->"
    stat: "(default: hypergeo)"
    p_value: "<#> (p-value cutoff, default: 0.01)"
    optimize: "(Optimize motif degeneracy thresholds to maximize enrichment)"
    homer: "(use original homer, default, for now...)"
    homer_two: "(use homer2)"
    number_use_homer: "<#> (number of CPUs to use, homer2 only)"
    cache: "<#> (size in MB of statistics cache, default: 500)"
    bits: "(scale logos by information content)"
    dbview: "(internal option)"
    seq_logo: "(Use Weblogo/seqlogo/ghostscript, by default now generates SVG logos)"
    rna: "(output RNA logos i.e. U instead of T)"
    s: ""
    g: ""
    o: ""
  }
}