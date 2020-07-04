version 1.0

task Mast {
  input {
    String? b_file
    Boolean? db_list
    String? directory_to_output_mast_results
    String? oc
    Boolean? hit_list
    Boolean? rem_corr
    String? use_only_motifs_named
    String? mi
    String? only_use_motifs
    String? mev
    String? diag
    Boolean? norc
    Boolean? sep
    Boolean? dna
    Boolean? comp
    String? ev
    String? mt
    Boolean? show_weak_matches
    Boolean? best
    Boolean? seq_p
    String? mv
    String? df
    String? dl
    String? mins_eqs
    Boolean? no_status
    Boolean? no_text
    Boolean? no_html
    Boolean? version
    String motif_file
    String sequence_file
  }
  command <<<
    mast \
      ~{motif_file} \
      ~{sequence_file} \
      ~{if defined(b_file) then ("-bfile " +  '"' + b_file + '"') else ""} \
      ~{true="-dblist" false="" db_list} \
      ~{if defined(directory_to_output_mast_results) then ("-o " +  '"' + directory_to_output_mast_results + '"') else ""} \
      ~{if defined(oc) then ("-oc " +  '"' + oc + '"') else ""} \
      ~{true="-hit_list" false="" hit_list} \
      ~{true="-remcorr" false="" rem_corr} \
      ~{if defined(use_only_motifs_named) then ("-m " +  '"' + use_only_motifs_named + '"') else ""} \
      ~{if defined(mi) then ("-mi " +  '"' + mi + '"') else ""} \
      ~{if defined(only_use_motifs) then ("-c " +  '"' + only_use_motifs + '"') else ""} \
      ~{if defined(mev) then ("-mev " +  '"' + mev + '"') else ""} \
      ~{if defined(diag) then ("-diag " +  '"' + diag + '"') else ""} \
      ~{true="-norc" false="" norc} \
      ~{true="-sep" false="" sep} \
      ~{true="-dna" false="" dna} \
      ~{true="-comp" false="" comp} \
      ~{if defined(ev) then ("-ev " +  '"' + ev + '"') else ""} \
      ~{if defined(mt) then ("-mt " +  '"' + mt + '"') else ""} \
      ~{true="-w" false="" show_weak_matches} \
      ~{true="-best" false="" best} \
      ~{true="-seqp" false="" seq_p} \
      ~{if defined(mv) then ("-mv " +  '"' + mv + '"') else ""} \
      ~{if defined(df) then ("-df " +  '"' + df + '"') else ""} \
      ~{if defined(dl) then ("-dl " +  '"' + dl + '"') else ""} \
      ~{if defined(mins_eqs) then ("-minseqs " +  '"' + mins_eqs + '"') else ""} \
      ~{true="-nostatus" false="" no_status} \
      ~{true="-notext" false="" no_text} \
      ~{true="-nohtml" false="" no_html} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    b_file: "read background frequencies from <bf>"
    db_list: "the file specified as database contains a list of databases"
    directory_to_output_mast_results: "directory to output mast results"
    oc: "directory to output mast results with overwriting allowed"
    hit_list: "print only a list of non-overlapping hits to stdout"
    rem_corr: "remove highly correlated motifs from query"
    use_only_motifs_named: "use only motif(s) named <id> (overrides -mev); can be repeated"
    mi: "use only motif(s) numbered <m> (overrides -mev); can be repeated"
    only_use_motifs: "only use the first <count> motifs or all motifs when <count> is zero"
    mev: "use only motifs with E-values less than <mev>"
    diag: "nominal order and spacing of motifs"
    norc: "do not score reverse complement DNA strand"
    sep: "score reverse complement DNA strand as a separate sequence"
    dna: "translate DNA sequences to protein"
    comp: "adjust p-values and E-values for sequence composition"
    ev: "print results for sequences with E-value < <ev>; default: 0.0001"
    mt: "show motif matches with p-value < mt; default: 6.91595e-310"
    show_weak_matches: "show weak matches (mt < p-value < mt*10) in angle brackets"
    best: "include only the best motif in diagrams; hit_list mode only"
    seq_p: "use SEQUENCE p-values for motif thresholds default: use POSITION p-values"
    mv: "in results use <mf> as motif file name"
    df: "in results use <df> as database name; ignored when option -dblist is specified"
    dl: "in results use <dl> as link to search sequence names; ignored when -dblist specified"
    mins_eqs: "lower bound on number of sequences in db"
    no_status: "do not print progress report"
    no_text: "do not generate text output"
    no_html: "do not generate html output"
    version: "print the version and exit"
    motif_file: ""
    sequence_file: ""
  }
}