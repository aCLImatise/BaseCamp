version 1.0

task FindKnownMotifspl {
  input {
    File? tsv_sequence_file
    File? tsv_group_file
    Directory? known_motif_file
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
  }
  command <<<
    findKnownMotifs_pl \
      ~{if defined(tsv_sequence_file) then ("-s " +  '"' + tsv_sequence_file + '"') else ""} \
      ~{if defined(tsv_group_file) then ("-g " +  '"' + tsv_group_file + '"') else ""} \
      ~{if defined(known_motif_file) then ("-o " +  '"' + known_motif_file + '"') else ""} \
      ~{if defined(stat) then ("-stat " +  '"' + stat + '"') else ""} \
      ~{if (p_value) then "-pvalue" else ""} \
      ~{if (optimize) then "-optimize" else ""} \
      ~{if (homer) then "-homer" else ""} \
      ~{if (homer_two) then "-homer2" else ""} \
      ~{if (number_use_homer) then "-p" else ""} \
      ~{if (cache) then "-cache" else ""} \
      ~{if (bits) then "-bits" else ""} \
      ~{if (dbview) then "-dbview" else ""} \
      ~{if (seq_logo) then "-seqlogo" else ""} \
      ~{if (rna) then "-rna" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tsv_sequence_file: "(tsv sequence file)"
    tsv_group_file: "(tsv group file)"
    known_motif_file: "(Known motif file, default: /usr/local/share/homer-4.11-2/.//data/knownTFs/known.motifs)"
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
  }
  output {
    File out_stdout = stdout()
    Directory out_known_motif_file = "${in_known_motif_file}"
  }
}