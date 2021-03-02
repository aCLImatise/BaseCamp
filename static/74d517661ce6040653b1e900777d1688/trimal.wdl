version 1.0

task Trimal {
  input {
    File? in
    File? compare_set
    File? force_select
    File? back_trans
    Boolean? ignore_stop_codon
    Boolean? split_by_stop_codon
    File? matrix
    File? out
    File? html_out
    Boolean? keep_header
    File? nbr_f
    File? mega
    File? nexus
    File? clustal
    File? fast_a
    Boolean? fast_a_m_one_zero
    File? phylip
    Boolean? phylip_m_one_zero
    File? phylip_paml
    Boolean? phylip_paml_m_one_zero
    File? phylip_three_dot_two
    Boolean? phylip_three_dot_two_m_one_zero
    Boolean? complementary
    Boolean? col_numbering
    String? select_cols
    String? select_seqs
    Int? gap_threshold
    Int? sim_threshold
    Int? con_threshold
    Int? cons
    Boolean? nogaps
    Boolean? no_all_gaps
    Boolean? keep_seqs
    Boolean? gapp_you_t
    Boolean? strict
    Boolean? strict_plus
    Boolean? automated_one
    Boolean? terminal_only
    Int? block
    Boolean? res_overlap
    Boolean? seq_overlap
    Int? clusters
    Int? max_identity
    Int? half_window_size
    Int? gw
    Int? sw
    Int? cw
    Boolean? sgc
    Boolean? sgt
    Boolean? ssc
    Boolean? sst
    Boolean? sfc
    Boolean? sft
    Boolean? sident
  }
  command <<<
    trimal \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(compare_set) then ("-compareset " +  '"' + compare_set + '"') else ""} \
      ~{if defined(force_select) then ("-forceselect " +  '"' + force_select + '"') else ""} \
      ~{if defined(back_trans) then ("-backtrans " +  '"' + back_trans + '"') else ""} \
      ~{if (ignore_stop_codon) then "-ignorestopcodon" else ""} \
      ~{if (split_by_stop_codon) then "-splitbystopcodon" else ""} \
      ~{if defined(matrix) then ("-matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(html_out) then ("-htmlout " +  '"' + html_out + '"') else ""} \
      ~{if (keep_header) then "-keepheader" else ""} \
      ~{if (nbr_f) then "-nbrf" else ""} \
      ~{if (mega) then "-mega" else ""} \
      ~{if (nexus) then "-nexus" else ""} \
      ~{if (clustal) then "-clustal" else ""} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (fast_a_m_one_zero) then "-fasta_m10" else ""} \
      ~{if (phylip) then "-phylip" else ""} \
      ~{if (phylip_m_one_zero) then "-phylip_m10" else ""} \
      ~{if (phylip_paml) then "-phylip_paml" else ""} \
      ~{if (phylip_paml_m_one_zero) then "-phylip_paml_m10" else ""} \
      ~{if (phylip_three_dot_two) then "-phylip3.2" else ""} \
      ~{if (phylip_three_dot_two_m_one_zero) then "-phylip3.2_m10" else ""} \
      ~{if (complementary) then "-complementary" else ""} \
      ~{if (col_numbering) then "-colnumbering" else ""} \
      ~{if defined(select_cols) then ("-selectcols " +  '"' + select_cols + '"') else ""} \
      ~{if defined(select_seqs) then ("-selectseqs " +  '"' + select_seqs + '"') else ""} \
      ~{if defined(gap_threshold) then ("-gapthreshold " +  '"' + gap_threshold + '"') else ""} \
      ~{if defined(sim_threshold) then ("-simthreshold " +  '"' + sim_threshold + '"') else ""} \
      ~{if defined(con_threshold) then ("-conthreshold " +  '"' + con_threshold + '"') else ""} \
      ~{if defined(cons) then ("-cons " +  '"' + cons + '"') else ""} \
      ~{if (nogaps) then "-nogaps" else ""} \
      ~{if (no_all_gaps) then "-noallgaps" else ""} \
      ~{if (keep_seqs) then "-keepseqs" else ""} \
      ~{if (gapp_you_t) then "-gappyout" else ""} \
      ~{if (strict) then "-strict" else ""} \
      ~{if (strict_plus) then "-strictplus" else ""} \
      ~{if (automated_one) then "-automated1" else ""} \
      ~{if (terminal_only) then "-terminalonly" else ""} \
      ~{if defined(block) then ("-block " +  '"' + block + '"') else ""} \
      ~{if (res_overlap) then "-resoverlap" else ""} \
      ~{if (seq_overlap) then "-seqoverlap" else ""} \
      ~{if defined(clusters) then ("-clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(max_identity) then ("-maxidentity " +  '"' + max_identity + '"') else ""} \
      ~{if defined(half_window_size) then ("-w " +  '"' + half_window_size + '"') else ""} \
      ~{if defined(gw) then ("-gw " +  '"' + gw + '"') else ""} \
      ~{if defined(sw) then ("-sw " +  '"' + sw + '"') else ""} \
      ~{if defined(cw) then ("-cw " +  '"' + cw + '"') else ""} \
      ~{if (sgc) then "-sgc" else ""} \
      ~{if (sgt) then "-sgt" else ""} \
      ~{if (ssc) then "-ssc" else ""} \
      ~{if (sst) then "-sst" else ""} \
      ~{if (sfc) then "-sfc" else ""} \
      ~{if (sft) then "-sft" else ""} \
      ~{if (sident) then "-sident" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Input file in several formats (clustal, fasta, NBRF/PIR, nexus, phylip3.2, phylip)."
    compare_set: "Input list of paths for the files containing the alignments to compare."
    force_select: "Force selection of the given input file in the files comparison method."
    back_trans: "Use a Coding Sequences file to get a backtranslation for a given AA alignment"
    ignore_stop_codon: "Ignore stop codons in the input coding sequences"
    split_by_stop_codon: "Split input coding sequences up to first stop codon appearance"
    matrix: "Input file for user-defined similarity matrix (default is Blosum62)."
    out: "Output alignment in the same input format (default stdout). (default input format)"
    html_out: "Get a summary of trimal's work in an HTML file."
    keep_header: "Keep original sequence header including non-alphanumeric characters.\\nOnly available for input FASTA format files. (future versions will extend this feature)"
    nbr_f: "Output file in NBRF/PIR format"
    mega: "Output file in MEGA format"
    nexus: "Output file in NEXUS format"
    clustal: "Output file in CLUSTAL format"
    fast_a: "Output file in FASTA format"
    fast_a_m_one_zero: "Output file in FASTA format. Sequences name length up to 10 characters."
    phylip: "Output file in PHYLIP/PHYLIP4 format"
    phylip_m_one_zero: "Output file in PHYLIP/PHYLIP4 format. Sequences name length up to 10 characters."
    phylip_paml: "Output file in PHYLIP format compatible with PAML"
    phylip_paml_m_one_zero: "Output file in PHYLIP format compatible with PAML. Sequences name length up to 10 characters."
    phylip_three_dot_two: "Output file in PHYLIP3.2 format"
    phylip_three_dot_two_m_one_zero: "Output file in PHYLIP3.2 format. Sequences name length up to 10 characters."
    complementary: "Get the complementary alignment."
    col_numbering: "Get the relationship between the columns in the old and new alignment."
    select_cols: "Selection of columns to be removed from the alignment. Range: [0 - (Number of Columns - 1)]. (see User Guide)."
    select_seqs: "Selection of sequences to be removed from the alignment. Range: [0 - (Number of Sequences - 1)]. (see User Guide)."
    gap_threshold: "1 - (fraction of sequences with a gap allowed). Range: [0 - 1]"
    sim_threshold: "Minimum average similarity allowed. Range: [0 - 1]"
    con_threshold: "Minimum consistency value allowed.Range: [0 - 1]"
    cons: "Minimum percentage of the positions in the original alignment to conserve. Range: [0 - 100]"
    nogaps: "Remove all positions with gaps in the alignment."
    no_all_gaps: "Remove columns composed only by gaps."
    keep_seqs: "Keep sequences even if they are composed only by gaps."
    gapp_you_t: "Use automated selection on \\\"gappyout\\\" mode. This method only uses information based on gaps' distribution. (see User Guide)."
    strict: "Use automated selection on \\\"strict\\\" mode. (see User Guide)."
    strict_plus: "Use automated selection on \\\"strictplus\\\" mode. (see User Guide).\\n(Optimized for Neighbour Joining phylogenetic tree reconstruction)."
    automated_one: "Use a heuristic selection of the automatic method based on similarity statistics. (see User Guide). (Optimized for Maximum Likelihood phylogenetic tree reconstruction)."
    terminal_only: "Only columns out of internal boundaries (first and last column without gaps) are\\ncandidated to be trimmed depending on the applied method"
    block: "Minimum column block size to be kept in the trimmed alignment. Available with manual and automatic (gappyout) methods"
    res_overlap: "Minimum overlap of a positions with other positions in the column to be considered a \\\"good position\\\". Range: [0 - 1]. (see User Guide)."
    seq_overlap: "Minimum percentage of \\\"good positions\\\" that a sequence must have in order to be conserved. Range: [0 - 100](see User Guide)."
    clusters: "Get the most Nth representatives sequences from a given alignment. Range: [1 - (Number of sequences)]"
    max_identity: "Get the representatives sequences for a given identity threshold. Range: [0 - 1]."
    half_window_size: "(half) Window size, score of position i is the average of the window (i - n) to (i + n)."
    gw: "(half) Window size only applies to statistics/methods based on Gaps."
    sw: "(half) Window size only applies to statistics/methods based on Similarity."
    cw: "(half) Window size only applies to statistics/methods based on Consistency."
    sgc: "Print gap scores for each column in the input alignment."
    sgt: "Print accumulated gap scores for the input alignment."
    ssc: "Print similarity scores for each column in the input alignment."
    sst: "Print accumulated similarity scores for the input alignment."
    sfc: "Print sum-of-pairs scores for each column from the selected alignment"
    sft: "Print accumulated sum-of-pairs scores for the selected alignment"
    sident: "Print identity scores for all sequences in the input alignment. (see User Guide)."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_html_out = "${in_html_out}"
    File out_nbr_f = "${in_nbr_f}"
    File out_mega = "${in_mega}"
    File out_nexus = "${in_nexus}"
    File out_clustal = "${in_clustal}"
    File out_fast_a = "${in_fast_a}"
    File out_phylip = "${in_phylip}"
    File out_phylip_paml = "${in_phylip_paml}"
    File out_phylip_three_dot_two = "${in_phylip_three_dot_two}"
  }
}