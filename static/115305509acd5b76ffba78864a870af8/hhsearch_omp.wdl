version 1.0

task HhsearchOmp {
  input {
    File? inputquery_multiple_sequence
    String? database_name_eg
    Boolean? evalue_cutoff_inclusion
    Boolean? tags_slash_no_tags
    File? write_results_file
    File? o_a_three_m
    String? blast_tab
    File? opsi
    File? oh_hm
    Boolean? add_cons
    Boolean? hide_cons
    Boolean? hide_pred
    Boolean? hide_dssp
    Boolean? show_ss_conf
    File? of_as
    Int? seq
    Int? ali_w
    Boolean? minimum_probability_summary
    Boolean? inf_maximum_evalue
    Int? maximum_number_lines
    Int? minimum_number_lines
    Int? maximum_number_alignments
    Int? minimum_number_alignments
    Boolean? all
    Boolean? id
    Boolean? diff
    Boolean? cov
    Boolean? qid
    Boolean? qsc
    Boolean? neff
    Boolean? mark
    Boolean? no_realign
    Int? ovlp
    Boolean? mact
    Boolean? glob_slash_loc
    Boolean? realign
    String? excl
    Int? realign_max
    Int? alt
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
    Boolean? pc_hhm_con_txt_a
    Boolean? pc_hhm_con_txt_b
    Boolean? pc_hhm_con_txt_c
    Boolean? pc_hhm_no_con_txt_a
    Boolean? pc_hhm_no_con_txt_b
    Boolean? pc_hhm_no_con_txt_c
    Boolean? no_con_txt
    File? con_txt
    Boolean? csw
    Boolean? csb
    Int? verbose_mode_screen
    Int? cpu
    File? scores
    Boolean? a_tab
    Int? max_seq
    Int? max_res
    Boolean? maxmem
    String hh_search
  }
  command <<<
    hhsearch_omp \
      ~{hh_search} \
      ~{if defined(inputquery_multiple_sequence) then ("-i " +  '"' + inputquery_multiple_sequence + '"') else ""} \
      ~{if defined(database_name_eg) then ("-d " +  '"' + database_name_eg + '"') else ""} \
      ~{true="-e" false="" evalue_cutoff_inclusion} \
      ~{true="-tags/-notags" false="" tags_slash_no_tags} \
      ~{if defined(write_results_file) then ("-o " +  '"' + write_results_file + '"') else ""} \
      ~{if defined(o_a_three_m) then ("-oa3m " +  '"' + o_a_three_m + '"') else ""} \
      ~{if defined(blast_tab) then ("-blasttab " +  '"' + blast_tab + '"') else ""} \
      ~{if defined(opsi) then ("-opsi " +  '"' + opsi + '"') else ""} \
      ~{if defined(oh_hm) then ("-ohhm " +  '"' + oh_hm + '"') else ""} \
      ~{true="-add_cons" false="" add_cons} \
      ~{true="-hide_cons" false="" hide_cons} \
      ~{true="-hide_pred" false="" hide_pred} \
      ~{true="-hide_dssp" false="" hide_dssp} \
      ~{true="-show_ssconf" false="" show_ss_conf} \
      ~{if defined(of_as) then ("-Ofas " +  '"' + of_as + '"') else ""} \
      ~{if defined(seq) then ("-seq " +  '"' + seq + '"') else ""} \
      ~{if defined(ali_w) then ("-aliw " +  '"' + ali_w + '"') else ""} \
      ~{true="-p" false="" minimum_probability_summary} \
      ~{true="-E" false="" inf_maximum_evalue} \
      ~{if defined(maximum_number_lines) then ("-Z " +  '"' + maximum_number_lines + '"') else ""} \
      ~{if defined(minimum_number_lines) then ("-z " +  '"' + minimum_number_lines + '"') else ""} \
      ~{if defined(maximum_number_alignments) then ("-B " +  '"' + maximum_number_alignments + '"') else ""} \
      ~{if defined(minimum_number_alignments) then ("-b " +  '"' + minimum_number_alignments + '"') else ""} \
      ~{true="-all" false="" all} \
      ~{true="-id" false="" id} \
      ~{true="-diff" false="" diff} \
      ~{true="-cov" false="" cov} \
      ~{true="-qid" false="" qid} \
      ~{true="-qsc" false="" qsc} \
      ~{true="-neff" false="" neff} \
      ~{true="-mark" false="" mark} \
      ~{true="-norealign" false="" no_realign} \
      ~{if defined(ovlp) then ("-ovlp " +  '"' + ovlp + '"') else ""} \
      ~{true="-mact" false="" mact} \
      ~{true="-glob/-loc" false="" glob_slash_loc} \
      ~{true="-realign" false="" realign} \
      ~{if defined(excl) then ("-excl " +  '"' + excl + '"') else ""} \
      ~{if defined(realign_max) then ("-realign_max " +  '"' + realign_max + '"') else ""} \
      ~{if defined(alt) then ("-alt " +  '"' + alt + '"') else ""} \
      ~{if defined(sm_in) then ("-smin " +  '"' + sm_in + '"') else ""} \
      ~{true="-shift" false="" shift} \
      ~{true="-corr" false="" corr} \
      ~{true="-sc" false="" sc} \
      ~{true="-ssm" false="" ssm} \
      ~{true="-ssw" false="" ssw} \
      ~{true="-ssa" false="" ssa} \
      ~{true="-wg" false="" wg} \
      ~{true="-gapb" false="" gap_b} \
      ~{true="-gapd" false="" gap_d} \
      ~{true="-gape" false="" gape} \
      ~{true="-gapf" false="" gap_f} \
      ~{true="-gapg" false="" gap_g} \
      ~{true="-gaph" false="" gap_h} \
      ~{true="-gapi" false="" gap_i} \
      ~{true="-egq" false="" eg_q} \
      ~{true="-egt" false="" egt} \
      ~{true="-pc_hhm_contxt_a" false="" pc_hhm_con_txt_a} \
      ~{true="-pc_hhm_contxt_b" false="" pc_hhm_con_txt_b} \
      ~{true="-pc_hhm_contxt_c" false="" pc_hhm_con_txt_c} \
      ~{true="-pc_hhm_nocontxt_a" false="" pc_hhm_no_con_txt_a} \
      ~{true="-pc_hhm_nocontxt_b" false="" pc_hhm_no_con_txt_b} \
      ~{true="-pc_hhm_nocontxt_c" false="" pc_hhm_no_con_txt_c} \
      ~{true="-nocontxt" false="" no_con_txt} \
      ~{if defined(con_txt) then ("-contxt " +  '"' + con_txt + '"') else ""} \
      ~{true="-csw" false="" csw} \
      ~{true="-csb" false="" csb} \
      ~{if defined(verbose_mode_screen) then ("-v " +  '"' + verbose_mode_screen + '"') else ""} \
      ~{if defined(cpu) then ("-cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(scores) then ("-scores " +  '"' + scores + '"') else ""} \
      ~{true="-atab" false="" a_tab} \
      ~{if defined(max_seq) then ("-maxseq " +  '"' + max_seq + '"') else ""} \
      ~{if defined(max_res) then ("-maxres " +  '"' + max_res + '"') else ""} \
      ~{true="-maxmem" false="" maxmem}
  >>>
  parameter_meta {
    inputquery_multiple_sequence: "input/query multiple sequence alignment (a2m, a3m, FASTA) or HMM"
    database_name_eg: "database name (e.g. uniprot20_29Feb2012)                         Multiple databases may be specified with '-d <db1> -d <db2> ...'"
    evalue_cutoff_inclusion: "[0,1]   E-value cutoff for inclusion in result alignment (def=0.001)       "
    tags_slash_no_tags: "do NOT / do neutralize His-, C-myc-, FLAG-tags, and trypsin  recognition sequence to background distribution (def=-notags)  "
    write_results_file: "write results in standard format to file (default=<infile.hhr>)"
    o_a_three_m: "write result MSA with significant matches in a3m format"
    blast_tab: "write result in tabular BLAST format (compatible to -m 8 or -outfmt 6 output) 1      2      3           4         5        6      8    9      10   11   12 'query target #match/tLen #mismatch #gapOpen qstart qend tstart tend eval score'"
    opsi: "write result MSA of significant matches in PSI-BLAST format"
    oh_hm: "write HHM file for result MSA of significant matches"
    add_cons: "generate consensus sequence as master sequence of query MSA (default=don't)"
    hide_cons: "don't show consensus sequence in alignments (default=show)     "
    hide_pred: "don't show predicted 2ndary structure in alignments (default=show)"
    hide_dssp: "don't show DSSP 2ndary structure in alignments (default=show)  "
    show_ss_conf: "show confidences for predicted 2ndary structure in alignments"
    of_as: "write pairwise alignments in FASTA xor A2M (-Oa2m) xor A3M (-Oa3m) format   "
    seq: "max. number of query/template sequences displayed (default=1)  "
    ali_w: "number of columns per line in alignment list (default=80)       "
    minimum_probability_summary: "[0,100]     minimum probability in summary and alignment list (default=20)  "
    inf_maximum_evalue: "[0,inf[     maximum E-value in summary and alignment list (default=1E+06)      "
    maximum_number_lines: "maximum number of lines in summary hit list (default=500)        "
    minimum_number_lines: "minimum number of lines in summary hit list (default=10)        "
    maximum_number_alignments: "maximum number of alignments in alignment list (default=500)     "
    minimum_number_alignments: "minimum number of alignments in alignment list (default=10)     "
    all: "show all sequences in result MSA; do not filter result MSA      "
    id: "[0,100]  maximum pairwise sequence identity (def=90)"
    diff: "[0,inf[  filter MSAs by selecting most diverse set of sequences, keeping  at least this many seqs in each MSA block of length 50  Zero and non-numerical values turn off the filtering. (def=100) "
    cov: "[0,100]  minimum coverage with master sequence (%) (def=0)             "
    qid: "[0,100]  minimum sequence identity with master sequence (%) (def=0)    "
    qsc: "[0,100]  minimum score per column with master sequence (default=-20.0)    "
    neff: "[1,inf]  target diversity of multiple sequence alignment (default=off)   "
    mark: "do not filter out sequences marked by \">@\"in their name line  "
    no_realign: "do NOT realign displayed hits with MAC algorithm (def=realign)   "
    ovlp: "banded alignment: forbid <ovlp> largest diagonals |i-j| of DP matrix (def=0)"
    mact: "[0,1[         posterior prob threshold for MAC realignment controlling greedi-  ness at alignment ends: 0:global >0.1:local (default=0.35)       "
    glob_slash_loc: "use global/local alignment mode for searching/ranking (def=local)"
    realign: "realign displayed hits with max. accuracy (MAC) algorithm "
    excl: "exclude query positions from the alignment, e.g. '1-33,97-168' "
    realign_max: "realign max. <int> hits (default=500)                        "
    alt: "show up to this many alternative alignments with raw score > smin(def=4)  "
    sm_in: "minimum raw score for alternative alignments (def=20.0)  "
    shift: "[-1,1]       profile-profile score offset (def=-0.03)                         "
    corr: "[0,1]         weight of term for pair correlations (def=0.10)                "
    sc: "<int>         amino acid score         (tja: template HMM at column j) (def=1) 0       = log2 Sum(tja*qia/pa)   (pa: aa background frequencies)     1       = log2 Sum(tja*qia/pqa)  (pqa = 1/2*(pa+ta) )                2       = log2 Sum(tja*qia/ta)   (ta: av. aa freqs in template)      3       = log2 Sum(tja*qia/qa)   (qa: av. aa freqs in query)         5       local amino acid composition correction                     "
    ssm: "{0,..,4}    0:   no ss scoring                                              1,2: ss scoring after or during alignment  [default=2]          3,4: ss scoring after or during alignment, predicted vs. predicted"
    ssw: "[0,1]          weight of ss score  (def=0.11)                                  "
    ssa: "[0,1]          SS substitution matrix = (1-ssa)*I + ssa*full-SS-substition-matrix [def=1.00)"
    wg: "use global sequence weighting for realignment!                   "
    gap_b: "[0,inf[  Transition pseudocount admixture (def=1.00)                     "
    gap_d: "[0,inf[  Transition pseudocount admixture for open gap (default=0.15)    "
    gape: "[0,1.5]  Transition pseudocount admixture for extend gap (def=1.00)      "
    gap_f: "]0,inf]  factor to increase/reduce gap open penalty for deletes (def=0.60) "
    gap_g: "]0,inf]  factor to increase/reduce gap open penalty for inserts (def=0.60) "
    gap_h: "]0,inf]  factor to increase/reduce gap extend penalty for deletes(def=0.60)"
    gap_i: "]0,inf]  factor to increase/reduce gap extend penalty for inserts(def=0.60)"
    eg_q: "[0,inf[  penalty (bits) for end gaps aligned to query residues (def=0.00) "
    egt: "[0,inf[  penalty (bits) for end gaps aligned to template residues (def=0.00)"
    pc_hhm_con_txt_a: "[0,1]        overall pseudocount admixture (def=0.9)                        "
    pc_hhm_con_txt_b: "[1,inf[      Neff threshold value for mode 2 (def=4.0)                      "
    pc_hhm_con_txt_c: "[0,3]        extinction exponent c for mode 2 (def=1.0)                     "
    pc_hhm_no_con_txt_a: "[0,1]        overall pseudocount admixture (def=1.0)                        "
    pc_hhm_no_con_txt_b: "[1,inf[      Neff threshold value for mode 2 (def=1.5)                      "
    pc_hhm_no_con_txt_c: "[0,3]        extinction exponent c for mode 2 (def=1.0)                     "
    no_con_txt: "use substitution-matrix instead of context-specific pseudocounts "
    con_txt: "context file for computing context-specific pseudocounts (default=)"
    csw: "[0,inf]  weight of central position in cs pseudocount mode (def=1.6)"
    csb: "[0,1]    weight decay parameter for positions in cs pc mode (def=0.9)"
    verbose_mode_screen: "verbose mode: 0:no screen output  1:only warnings  2: verbose (def=2)"
    cpu: "number of CPUs to use (for shared memory SMPs) (default=2)      "
    scores: "write scores for all pairwise comparisons to file               "
    a_tab: "<file> write all alignments in tabular layout to file                   "
    max_seq: "max number of input rows (def=65535)"
    max_res: "max number of HMM columns (def=20001)"
    maxmem: "[1,inf[ limit memory for realignment (in GB) (def=3.0)          "
    hh_search: ""
  }
}