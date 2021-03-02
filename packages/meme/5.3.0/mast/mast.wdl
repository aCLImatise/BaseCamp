version 1.0

task Mast {
  input {
    String? b_file
    Boolean? db_list
    Directory? directory_to_output_mast_results
    Directory? oc
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
    Float? ev
    Float? mt
    Boolean? show_weak_matches
    Boolean? best
    Boolean? seq_p
    File? mv
    String? df
    String? dl
    Int? mins_eqs
    Boolean? no_status
    Boolean? no_text
    Boolean? no_html
    Boolean? version
    File motif_file
    File sequence_file
  }
  command <<<
    mast \
      ~{motif_file} \
      ~{sequence_file} \
      ~{if defined(b_file) then ("-bfile " +  '"' + b_file + '"') else ""} \
      ~{if (db_list) then "-dblist" else ""} \
      ~{if defined(directory_to_output_mast_results) then ("-o " +  '"' + directory_to_output_mast_results + '"') else ""} \
      ~{if defined(oc) then ("-oc " +  '"' + oc + '"') else ""} \
      ~{if (hit_list) then "-hit_list" else ""} \
      ~{if (rem_corr) then "-remcorr" else ""} \
      ~{if defined(use_only_motifs_named) then ("-m " +  '"' + use_only_motifs_named + '"') else ""} \
      ~{if defined(mi) then ("-mi " +  '"' + mi + '"') else ""} \
      ~{if defined(only_use_motifs) then ("-c " +  '"' + only_use_motifs + '"') else ""} \
      ~{if defined(mev) then ("-mev " +  '"' + mev + '"') else ""} \
      ~{if defined(diag) then ("-diag " +  '"' + diag + '"') else ""} \
      ~{if (norc) then "-norc" else ""} \
      ~{if (sep) then "-sep" else ""} \
      ~{if (dna) then "-dna" else ""} \
      ~{if (comp) then "-comp" else ""} \
      ~{if defined(ev) then ("-ev " +  '"' + ev + '"') else ""} \
      ~{if defined(mt) then ("-mt " +  '"' + mt + '"') else ""} \
      ~{if (show_weak_matches) then "-w" else ""} \
      ~{if (best) then "-best" else ""} \
      ~{if (seq_p) then "-seqp" else ""} \
      ~{if defined(mv) then ("-mv " +  '"' + mv + '"') else ""} \
      ~{if defined(df) then ("-df " +  '"' + df + '"') else ""} \
      ~{if defined(dl) then ("-dl " +  '"' + dl + '"') else ""} \
      ~{if defined(mins_eqs) then ("-minseqs " +  '"' + mins_eqs + '"') else ""} \
      ~{if (no_status) then "-nostatus" else ""} \
      ~{if (no_text) then "-notext" else ""} \
      ~{if (no_html) then "-nohtml" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    b_file: "read background frequencies from <bf>"
    db_list: "the file specified as database contains a list of databases"
    directory_to_output_mast_results: "directory to output mast results"
    oc: "directory to output mast results with overwriting allowed"
    hit_list: "print only a list of non-overlapping hits to stdout"
    rem_corr: "remove highly correlated motifs from query"
    use_only_motifs_named: "use only motif(s) named <id> (overrides -mev);\\ncan be repeated"
    mi: "use only motif(s) numbered <m> (overrides -mev);\\ncan be repeated"
    only_use_motifs: "only use the first <count> motifs or all motifs\\nwhen <count> is zero"
    mev: "use only motifs with E-values (or p-values) less than\\nor equal to <thresh>"
    diag: "nominal order and spacing of motifs"
    norc: "do not score reverse complement DNA strand"
    sep: "score reverse complement DNA strand as a separate sequence"
    dna: "translate DNA sequences to protein"
    comp: "adjust p-values and E-values for sequence composition"
    ev: "print results for sequences with E-value < <ev>;\\ndefault: 0.0001"
    mt: "show motif matches with p-value < mt; default: 9.53282e-130"
    show_weak_matches: "show weak matches (mt < p-value < mt*10) in angle brackets"
    best: "include only the best motif in diagrams;\\nhit_list mode only"
    seq_p: "use SEQUENCE p-values for motif thresholds\\ndefault: use POSITION p-values"
    mv: "in results use <mf> as motif file name"
    df: "in results use <df> as database name; ignored when\\noption -dblist is specified"
    dl: "in results use <dl> as link to search sequence names;\\nignored when -dblist specified"
    mins_eqs: "lower bound on number of sequences in db"
    no_status: "do not print progress report"
    no_text: "do not generate text output"
    no_html: "do not generate html output"
    version: "print the version and exit"
    motif_file: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_to_output_mast_results = "${in_directory_to_output_mast_results}"
    Directory out_oc = "${in_oc}"
  }
}