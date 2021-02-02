version 1.0

task CompareMotifspl {
  input {
    Boolean? reduce_thresh
    Boolean? match_thresh
    File? known
    Boolean? p_value
    Boolean? remove_motifs_fold_less
    Boolean? info
    Boolean? remove_motifs_background_less
    Boolean? mint
    Boolean? site_reduce
    String? stat
    Boolean? bits
    Boolean? rna
    Boolean? norev_opp
    File? reduced_motifs
    File? matrix
    Boolean? no_facts
    Boolean? dbview
    File? db_table
    Boolean? cpu
    Boolean? basic
    Boolean? seq_logo
    File motifs_file
    Directory output_directory
  }
  command <<<
    compareMotifs_pl \
      ~{motifs_file} \
      ~{output_directory} \
      ~{if (reduce_thresh) then "-reduceThresh" else ""} \
      ~{if (match_thresh) then "-matchThresh" else ""} \
      ~{if defined(known) then ("-known " +  '"' + known + '"') else ""} \
      ~{if (p_value) then "-pvalue" else ""} \
      ~{if (remove_motifs_fold_less) then "-F" else ""} \
      ~{if (info) then "-info" else ""} \
      ~{if (remove_motifs_background_less) then "-b" else ""} \
      ~{if (mint) then "-minT" else ""} \
      ~{if (site_reduce) then "-siteReduce" else ""} \
      ~{if defined(stat) then ("-stat " +  '"' + stat + '"') else ""} \
      ~{if (bits) then "-bits" else ""} \
      ~{if (rna) then "-rna" else ""} \
      ~{if (norev_opp) then "-norevopp" else ""} \
      ~{if defined(reduced_motifs) then ("-reducedMotifs " +  '"' + reduced_motifs + '"') else ""} \
      ~{if defined(matrix) then ("-matrix " +  '"' + matrix + '"') else ""} \
      ~{if (no_facts) then "-nofacts" else ""} \
      ~{if (dbview) then "-dbview" else ""} \
      ~{if defined(db_table) then ("-dbTable " +  '"' + db_table + '"') else ""} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if (basic) then "-basic" else ""} \
      ~{if (seq_logo) then "-seqlogo" else ""}
  >>>
  parameter_meta {
    reduce_thresh: "<#> (Similarity Threshold used to remove similar motifs, default: 0.6)"
    match_thresh: "<#|T#> (Similarity Threshold to report alignments with known motifs.  Use T#\\n[i.e. T10] to match the top # known motifs regardless of similarity, default: T10)"
    known: "(Library of known motifs to compare to input motifs, default:\\n\\\"/usr/local/share/homer-4.11-2/.//data/knownTFs//all/all.motifs\\\""
    p_value: "<#> (Remove Motifs with a p-value higher than #, default: keep all)"
    remove_motifs_fold_less: "<#> (Remove Motifs with fold enrichment [target%/bg%] less than <#>, default: keep all)"
    info: "<#> (Remove Motifs with information content less than #, default: not used)"
    remove_motifs_background_less: "<#> (Remove Motifs with background percentage less than #, default: not used)"
    mint: "<#> (Remove Motifs with less than # number of target instances, default: not used)"
    site_reduce: "(If homer2 known with -siteReduce was used, motifs will be reduced by\\ntheir calculated co-occurence."
    stat: "(Stat used to compute matrix similarity.\\ndefault: correlation)"
    bits: "(scale logos to bit content, default present nucleotide percentage)"
    rna: "(output RNA motifs, use RNA motif/miRNA database for comparison)"
    norev_opp: "(do not check for matches on reverse strand)"
    reduced_motifs: "(will remove redundant motifs, output unique ones, and then quit)"
    matrix: "(will compute all pairwise similarity scores to matrix, then quit)"
    no_facts: "(leave out the humor)"
    dbview: "(internal option )"
    db_table: "(information to use in dbview, internal option)"
    cpu: "<#> (number of CPUs to use)"
    basic: "(don't compare to known motifs or print similar motifs)"
    seq_logo: "(revert to using seqlogo/weblogo/ghostscript, by default uses SVG now)"
    motifs_file: ""
    output_directory: ""
  }
  output {
    File out_stdout = stdout()
    File out_reduced_motifs = "${in_reduced_motifs}"
    File out_matrix = "${in_matrix}"
    Directory out_output_directory = "${in_output_directory}"
  }
}