version 1.0

task HhblitsOmp {
  input {
    File? inputquery_single_sequence
    Int? database_name_eg
    Boolean? number_iterations_default
    Boolean? evalue_cutoff_inclusion
    Boolean? no_tags
    File? write_results_file
    File? o_a_three_m
    File? opsi
    File? oh_hm
    Int? oal_is
    Int? blast_tab
    Boolean? add_cons
    Boolean? hide_cons
    Boolean? hide_pred
    Boolean? hide_dssp
    Boolean? show_ss_conf
    File? of_as
    Int? seq
    Int? ali_w
    Boolean? minimum_probability_default
    Boolean? inf_maximum_evalue
    Int? maximum_number_lines
    Int? minimum_number_lines
    Int? maximum_number_alignments
    Int? minimum_number_alignments
    Boolean? no_pre_filt
    Boolean? no_add_filter
    Boolean? max_filt
    Boolean? min_prefilter_hits
    Boolean? pre_pre_smax_thresh
    Boolean? pre_evalue_thresh
    Boolean? pre_bit_factor
    Boolean? pre_gap_open
    Boolean? pre_gap_extend
    Boolean? pre_score_offset
    Boolean? all
    String? interim_filter
    Boolean? id
    Boolean? diff
    Boolean? cov
    Boolean? qid
    Boolean? qsc
    Boolean? neff
    Boolean? mark
    Boolean? no_realign
    Boolean? realign_old_hits
    Boolean? mact
    Boolean? glob
    Boolean? realign
    Int? realign_max
    Int? ovlp
    Int? alt
    Int? pre_merge
    Float? sm_in
    Boolean? shift
    Boolean? corr
    Boolean? sc
    Boolean? ssm
    Boolean? ssw
    Boolean? ssa
    Boolean? wg
    Boolean? gap_b
    Boolean? gap_d
    Boolean? gape
    Boolean? gap_f
    Boolean? gap_g
    Boolean? gap_h
    Boolean? gap_i
    Boolean? eg_q
    Boolean? egt
    Boolean? pc_hhm_con_txt_mode
    Boolean? pc_hhm_con_txt_a
    Boolean? pc_hhm_con_txt_b
    Boolean? pc_hhm_con_txt_c
    Boolean? pc_hhm_no_con_txt_mode
    Boolean? pc_hhm_no_con_txt_a
    Boolean? pc_hhm_no_con_txt_b
    Boolean? pc_hhm_no_con_txt_c
    Boolean? pc_prefilter_con_txt_mode
    Boolean? pc_prefilter_con_txt_a
    Boolean? pc_prefilter_con_txt_b
    Boolean? pc_prefilter_con_txt_c
    Boolean? pc_prefilter_no_con_txt_mode
    Boolean? pc_prefilter_no_con_txt_a
    Boolean? pc_prefilter_no_con_txt_b
    Boolean? pc_prefilter_no_con_txt_c
    Boolean? no_con_txt
    File? con_txt
    Boolean? csw
    Boolean? csb
    Int? verbose_mode_screen
    Boolean? neff_max
    Int? cpu
    File? scores
    Int? filter_matrices
    Boolean? a_tab
    Int? max_seq
    Int? max_res
    Boolean? maxmem
    String hh_blits
  }
  command <<<
    hhblits_omp \
      ~{hh_blits} \
      ~{if defined(inputquery_single_sequence) then ("-i " +  '"' + inputquery_single_sequence + '"') else ""} \
      ~{if defined(database_name_eg) then ("-d " +  '"' + database_name_eg + '"') else ""} \
      ~{if (number_iterations_default) then "-n" else ""} \
      ~{if (evalue_cutoff_inclusion) then "-e" else ""} \
      ~{if (no_tags) then "-notags" else ""} \
      ~{if defined(write_results_file) then ("-o " +  '"' + write_results_file + '"') else ""} \
      ~{if defined(o_a_three_m) then ("-oa3m " +  '"' + o_a_three_m + '"') else ""} \
      ~{if defined(opsi) then ("-opsi " +  '"' + opsi + '"') else ""} \
      ~{if defined(oh_hm) then ("-ohhm " +  '"' + oh_hm + '"') else ""} \
      ~{if defined(oal_is) then ("-oalis " +  '"' + oal_is + '"') else ""} \
      ~{if defined(blast_tab) then ("-blasttab " +  '"' + blast_tab + '"') else ""} \
      ~{if (add_cons) then "-add_cons" else ""} \
      ~{if (hide_cons) then "-hide_cons" else ""} \
      ~{if (hide_pred) then "-hide_pred" else ""} \
      ~{if (hide_dssp) then "-hide_dssp" else ""} \
      ~{if (show_ss_conf) then "-show_ssconf" else ""} \
      ~{if defined(of_as) then ("-Ofas " +  '"' + of_as + '"') else ""} \
      ~{if defined(seq) then ("-seq " +  '"' + seq + '"') else ""} \
      ~{if defined(ali_w) then ("-aliw " +  '"' + ali_w + '"') else ""} \
      ~{if (minimum_probability_default) then "-p" else ""} \
      ~{if (inf_maximum_evalue) then "-E" else ""} \
      ~{if defined(maximum_number_lines) then ("-Z " +  '"' + maximum_number_lines + '"') else ""} \
      ~{if defined(minimum_number_lines) then ("-z " +  '"' + minimum_number_lines + '"') else ""} \
      ~{if defined(maximum_number_alignments) then ("-B " +  '"' + maximum_number_alignments + '"') else ""} \
      ~{if defined(minimum_number_alignments) then ("-b " +  '"' + minimum_number_alignments + '"') else ""} \
      ~{if (no_pre_filt) then "-noprefilt" else ""} \
      ~{if (no_add_filter) then "-noaddfilter" else ""} \
      ~{if (max_filt) then "-maxfilt" else ""} \
      ~{if (min_prefilter_hits) then "-min_prefilter_hits" else ""} \
      ~{if (pre_pre_smax_thresh) then "-prepre_smax_thresh" else ""} \
      ~{if (pre_evalue_thresh) then "-pre_evalue_thresh" else ""} \
      ~{if (pre_bit_factor) then "-pre_bitfactor" else ""} \
      ~{if (pre_gap_open) then "-pre_gap_open" else ""} \
      ~{if (pre_gap_extend) then "-pre_gap_extend" else ""} \
      ~{if (pre_score_offset) then "-pre_score_offset" else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if defined(interim_filter) then ("-interim_filter " +  '"' + interim_filter + '"') else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (diff) then "-diff" else ""} \
      ~{if (cov) then "-cov" else ""} \
      ~{if (qid) then "-qid" else ""} \
      ~{if (qsc) then "-qsc" else ""} \
      ~{if (neff) then "-neff" else ""} \
      ~{if (mark) then "-mark" else ""} \
      ~{if (no_realign) then "-norealign" else ""} \
      ~{if (realign_old_hits) then "-realign_old_hits" else ""} \
      ~{if (mact) then "-mact" else ""} \
      ~{if (glob) then "-glob" else ""} \
      ~{if (realign) then "-realign" else ""} \
      ~{if defined(realign_max) then ("-realign_max " +  '"' + realign_max + '"') else ""} \
      ~{if defined(ovlp) then ("-ovlp " +  '"' + ovlp + '"') else ""} \
      ~{if defined(alt) then ("-alt " +  '"' + alt + '"') else ""} \
      ~{if defined(pre_merge) then ("-premerge " +  '"' + pre_merge + '"') else ""} \
      ~{if defined(sm_in) then ("-smin " +  '"' + sm_in + '"') else ""} \
      ~{if (shift) then "-shift" else ""} \
      ~{if (corr) then "-corr" else ""} \
      ~{if (sc) then "-sc" else ""} \
      ~{if (ssm) then "-ssm" else ""} \
      ~{if (ssw) then "-ssw" else ""} \
      ~{if (ssa) then "-ssa" else ""} \
      ~{if (wg) then "-wg" else ""} \
      ~{if (gap_b) then "-gapb" else ""} \
      ~{if (gap_d) then "-gapd" else ""} \
      ~{if (gape) then "-gape" else ""} \
      ~{if (gap_f) then "-gapf" else ""} \
      ~{if (gap_g) then "-gapg" else ""} \
      ~{if (gap_h) then "-gaph" else ""} \
      ~{if (gap_i) then "-gapi" else ""} \
      ~{if (eg_q) then "-egq" else ""} \
      ~{if (egt) then "-egt" else ""} \
      ~{if (pc_hhm_con_txt_mode) then "-pc_hhm_contxt_mode" else ""} \
      ~{if (pc_hhm_con_txt_a) then "-pc_hhm_contxt_a" else ""} \
      ~{if (pc_hhm_con_txt_b) then "-pc_hhm_contxt_b" else ""} \
      ~{if (pc_hhm_con_txt_c) then "-pc_hhm_contxt_c" else ""} \
      ~{if (pc_hhm_no_con_txt_mode) then "-pc_hhm_nocontxt_mode" else ""} \
      ~{if (pc_hhm_no_con_txt_a) then "-pc_hhm_nocontxt_a" else ""} \
      ~{if (pc_hhm_no_con_txt_b) then "-pc_hhm_nocontxt_b" else ""} \
      ~{if (pc_hhm_no_con_txt_c) then "-pc_hhm_nocontxt_c" else ""} \
      ~{if (pc_prefilter_con_txt_mode) then "-pc_prefilter_contxt_mode" else ""} \
      ~{if (pc_prefilter_con_txt_a) then "-pc_prefilter_contxt_a" else ""} \
      ~{if (pc_prefilter_con_txt_b) then "-pc_prefilter_contxt_b" else ""} \
      ~{if (pc_prefilter_con_txt_c) then "-pc_prefilter_contxt_c" else ""} \
      ~{if (pc_prefilter_no_con_txt_mode) then "-pc_prefilter_nocontxt_mode" else ""} \
      ~{if (pc_prefilter_no_con_txt_a) then "-pc_prefilter_nocontxt_a" else ""} \
      ~{if (pc_prefilter_no_con_txt_b) then "-pc_prefilter_nocontxt_b" else ""} \
      ~{if (pc_prefilter_no_con_txt_c) then "-pc_prefilter_nocontxt_c" else ""} \
      ~{if (no_con_txt) then "-nocontxt" else ""} \
      ~{if defined(con_txt) then ("-contxt " +  '"' + con_txt + '"') else ""} \
      ~{if (csw) then "-csw" else ""} \
      ~{if (csb) then "-csb" else ""} \
      ~{if defined(verbose_mode_screen) then ("-v " +  '"' + verbose_mode_screen + '"') else ""} \
      ~{if (neff_max) then "-neffmax" else ""} \
      ~{if defined(cpu) then ("-cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(scores) then ("-scores " +  '"' + scores + '"') else ""} \
      ~{if defined(filter_matrices) then ("-filter_matrices " +  '"' + filter_matrices + '"') else ""} \
      ~{if (a_tab) then "-atab" else ""} \
      ~{if defined(max_seq) then ("-maxseq " +  '"' + max_seq + '"') else ""} \
      ~{if defined(max_res) then ("-maxres " +  '"' + max_res + '"') else ""} \
      ~{if (maxmem) then "-maxmem" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0"
  }
  parameter_meta {
    inputquery_single_sequence: "input/query: single sequence or multiple sequence alignment (MSA)\\nin a3m, a2m, or FASTA format, or HMM in hhm format"
    database_name_eg: "database name (e.g. uniprot20_29Feb2012)\\nMultiple databases may be specified with '-d <db1> -d <db2> ...'"
    number_iterations_default: "[1,8]   number of iterations (default=2)"
    evalue_cutoff_inclusion: "[0,1]   E-value cutoff for inclusion in result alignment (def=0.001)"
    no_tags: "do NOT / do neutralize His-, C-myc-, FLAG-tags, and trypsin\\nrecognition sequence to background distribution (def=-notags)"
    write_results_file: "write results in standard format to file (default=<infile.hhr>)"
    o_a_three_m: "write result MSA with significant matches in a3m format"
    opsi: "write result MSA of significant matches in PSI-BLAST format"
    oh_hm: "write HHM file for result MSA of significant matches"
    oal_is: "write MSAs in A3M format after each iteration"
    blast_tab: "write result in tabular BLAST format (compatible to -m 8 or -outfmt 6 output)\\n1      2      3           4         5        6      8    9      10   11   12\\n'query target #match/tLen #mismatch #gapOpen qstart qend tstart tend eval score'"
    add_cons: "generate consensus sequence as master sequence of query MSA (default=don't)"
    hide_cons: "don't show consensus sequence in alignments (default=show)"
    hide_pred: "don't show predicted 2ndary structure in alignments (default=show)"
    hide_dssp: "don't show DSSP 2ndary structure in alignments (default=show)"
    show_ss_conf: "show confidences for predicted 2ndary structure in alignments"
    of_as: "write pairwise alignments in FASTA xor A2M (-Oa2m) xor A3M (-Oa3m) format"
    seq: "max. number of query/template sequences displayed (default=1)"
    ali_w: "number of columns per line in alignment list (default=80)"
    minimum_probability_default: "[0,100]     minimum probability in summary and alignment list (default=20)"
    inf_maximum_evalue: "[0,inf[     maximum E-value in summary and alignment list (default=1E+06)"
    maximum_number_lines: "maximum number of lines in summary hit list (default=500)"
    minimum_number_lines: "minimum number of lines in summary hit list (default=10)"
    maximum_number_alignments: "maximum number of alignments in alignment list (default=500)"
    minimum_number_alignments: "minimum number of alignments in alignment list (default=10)"
    no_pre_filt: "disable all filter steps"
    no_add_filter: "disable all filter steps (except for fast prefiltering)"
    max_filt: "max number of hits allowed to pass 2nd prefilter (default=20000)"
    min_prefilter_hits: "min number of hits to pass prefilter (default=100)"
    pre_pre_smax_thresh: "min score threshold of ungapped prefilter (default=10)"
    pre_evalue_thresh: "max E-value threshold of Smith-Waterman prefilter score (default=1000.0)"
    pre_bit_factor: "prefilter scores are in units of 1 bit / pre_bitfactor (default=4)"
    pre_gap_open: "gap open penalty in prefilter Smith-Waterman alignment (default=20)"
    pre_gap_extend: "gap extend penalty in prefilter Smith-Waterman alignment (default=4)"
    pre_score_offset: "offset on sequence profile scores in prefilter S-W alignment (default=50)"
    all: "show all sequences in result MSA; do not filter result MSA"
    interim_filter: "|FULL\\nfilter sequences of query MSA during merging to avoid early stop (default: FULL)\\nNONE: disables the intermediate filter\\nFULL: if an early stop occurs compare filter seqs in an all vs. all comparison"
    id: "[0,100]  maximum pairwise sequence identity (def=90)"
    diff: "[0,inf[  filter MSAs by selecting most diverse set of sequences, keeping\\nat least this many seqs in each MSA block of length 50\\nZero and non-numerical values turn off the filtering. (def=1000)"
    cov: "[0,100]  minimum coverage with master sequence (%) (def=0)"
    qid: "[0,100]  minimum sequence identity with master sequence (%) (def=0)"
    qsc: "[0,100]  minimum score per column with master sequence (default=-20.0)"
    neff: "[1,inf]  target diversity of multiple sequence alignment (default=off)"
    mark: "do not filter out sequences marked by \\\">@\\\"in their name line"
    no_realign: "do NOT realign displayed hits with MAC algorithm (def=realign)"
    realign_old_hits: "realign hits from previous iterations"
    mact: "[0,1[          posterior prob threshold for MAC realignment controlling greedi-\\nness at alignment ends: 0:global >0.1:local (default=0.35)"
    glob: "use global/local alignment mode for searching/ranking (def=local)"
    realign: "realign displayed hits with max. accuracy (MAC) algorithm"
    realign_max: "realign max. <int> hits (default=500)"
    ovlp: "banded alignment: forbid <ovlp> largest diagonals |i-j| of DP matrix (def=0)"
    alt: "show up to this many alternative alignments with raw score > smin(def=4)"
    pre_merge: "merge <int> hits to query MSA before aligning remaining hits (def=3)"
    sm_in: "minimum raw score for alternative alignments (def=20.0)"
    shift: "[-1,1]        profile-profile score offset (def=-0.03)"
    corr: "[0,1]          weight of term for pair correlations (def=0.10)"
    sc: "<int>          amino acid score         (tja: template HMM at column j) (def=1)\\n0       = log2 Sum(tja*qia/pa)   (pa: aa background frequencies)\\n1       = log2 Sum(tja*qia/pqa)  (pqa = 1/2*(pa+ta) )\\n2       = log2 Sum(tja*qia/ta)   (ta: av. aa freqs in template)\\n3       = log2 Sum(tja*qia/qa)   (qa: av. aa freqs in query)\\n5       local amino acid composition correction"
    ssm: "{0,..,4}        0:   no ss scoring\\n1,2: ss scoring after or during alignment  [default=2]\\n3,4: ss scoring after or during alignment, predicted vs. predicted"
    ssw: "[0,1]           weight of ss score  (def=0.11)"
    ssa: "[0,1]           ss confusion matrix = (1-ssa)*I + ssa*psipred-confusion-matrix [def=1.00)"
    wg: "use global sequence weighting for realignment!"
    gap_b: "[0,inf[  Transition pseudocount admixture (def=1.00)"
    gap_d: "[0,inf[  Transition pseudocount admixture for open gap (default=0.15)"
    gape: "[0,1.5]  Transition pseudocount admixture for extend gap (def=1.00)"
    gap_f: "]0,inf]  factor to increase/reduce gap open penalty for deletes (def=0.60)"
    gap_g: "]0,inf]  factor to increase/reduce gap open penalty for inserts (def=0.60)"
    gap_h: "]0,inf]  factor to increase/reduce gap extend penalty for deletes(def=0.60)"
    gap_i: "]0,inf]  factor to increase/reduce gap extend penalty for inserts(def=0.60)"
    eg_q: "[0,inf[  penalty (bits) for end gaps aligned to query residues (def=0.00)"
    egt: "[0,inf[  penalty (bits) for end gaps aligned to template residues (def=0.00)"
    pc_hhm_con_txt_mode: "{0,..,3}   position dependence of pc admixture 'tau' (pc mode, default=2)\\n0: no pseudo counts:    tau = 0\\n1: constant             tau = a\\n2: diversity-dependent: tau = a/(1+((Neff[i]-1)/b)^c)\\n3: CSBlast admixture:   tau = a(1+b)/(Neff[i]+b)\\n(Neff[i]: number of effective seqs in local MSA around column i)"
    pc_hhm_con_txt_a: "[0,1]        overall pseudocount admixture (def=0.9)"
    pc_hhm_con_txt_b: "[1,inf[      Neff threshold value for mode 2 (def=4.0)"
    pc_hhm_con_txt_c: "[0,3]        extinction exponent c for mode 2 (def=1.0)"
    pc_hhm_no_con_txt_mode: "{0,..,3}   position dependence of pc admixture 'tau' (pc mode, default=2)\\n0: no pseudo counts:    tau = 0\\n1: constant             tau = a\\n2: diversity-dependent: tau = a/(1+((Neff[i]-1)/b)^c)\\n(Neff[i]: number of effective seqs in local MSA around column i)"
    pc_hhm_no_con_txt_a: "[0,1]        overall pseudocount admixture (def=1.0)"
    pc_hhm_no_con_txt_b: "[1,inf[      Neff threshold value for mode 2 (def=1.5)"
    pc_hhm_no_con_txt_c: "[0,3]        extinction exponent c for mode 2 (def=1.0)"
    pc_prefilter_con_txt_mode: "{0,..,3}   position dependence of pc admixture 'tau' (pc mode, default=3)\\n0: no pseudo counts:    tau = 0\\n1: constant             tau = a\\n2: diversity-dependent: tau = a/(1+((Neff[i]-1)/b)^c)\\n3: CSBlast admixture:   tau = a(1+b)/(Neff[i]+b)\\n(Neff[i]: number of effective seqs in local MSA around column i)"
    pc_prefilter_con_txt_a: "[0,1]        overall pseudocount admixture (def=0.8)"
    pc_prefilter_con_txt_b: "[1,inf[      Neff threshold value for mode 2 (def=2.0)"
    pc_prefilter_con_txt_c: "[0,3]        extinction exponent c for mode 2 (def=1.0)"
    pc_prefilter_no_con_txt_mode: "{0,..,3}   position dependence of pc admixture 'tau' (pc mode, default=2)\\n0: no pseudo counts:    tau = 0\\n1: constant             tau = a\\n2: diversity-dependent: tau = a/(1+((Neff[i]-1)/b)^c)\\n(Neff[i]: number of effective seqs in local MSA around column i)"
    pc_prefilter_no_con_txt_a: "[0,1]        overall pseudocount admixture (def=1.0)"
    pc_prefilter_no_con_txt_b: "[1,inf[      Neff threshold value for mode 2 (def=1.5)"
    pc_prefilter_no_con_txt_c: "[0,3]        extinction exponent c for mode 2 (def=1.0)"
    no_con_txt: "use substitution-matrix instead of context-specific pseudocounts"
    con_txt: "context file for computing context-specific pseudocounts (default=)"
    csw: "[0,inf]  weight of central position in cs pseudocount mode (def=1.6)"
    csb: "[0,1]    weight decay parameter for positions in cs pc mode (def=0.9)"
    verbose_mode_screen: "verbose mode: 0:no screen output  1:only warings  2: verbose (def=2)"
    neff_max: "]1,20] skip further search iterations when diversity Neff of query MSA\\nbecomes larger than neffmax (default=20.0)"
    cpu: "number of CPUs to use (for shared memory SMPs) (default=2)"
    scores: "write scores for all pairwise comparisons to file"
    filter_matrices: "matrices for similarity to output at most 100 matrices"
    a_tab: "<file> write all alignments in tabular layout to file"
    max_seq: "max number of input rows (def=65535)"
    max_res: "max number of HMM columns (def=20001)"
    maxmem: "[1,inf[ limit memory for realignment (in GB) (def=3.0)"
    hh_blits: ""
  }
  output {
    File out_stdout = stdout()
  }
}