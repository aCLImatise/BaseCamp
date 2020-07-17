version 1.0

task Nhmmer {
  input {
    String? direct_output_file
    String? save_multiple_alignment
    String? tbl_out
    String? df_am_tbl_out
    String? ali_scores_out
    String? hmm_out
    Boolean? acc
    Boolean? no_ali
    Boolean? no_text_w
    String? text_w
    Boolean? single_mx
    String? popen
    String? p_extend
    String? mx_file
    String? report_sequences_evalue
    String? report_sequences_threshold
    String? ince
    String? in_ct
    Boolean? cut_ga
    Boolean? cut_nc
    Boolean? cut_tc
    Boolean? max
    String? fone
    String? f_two
    String? f_three
    Boolean? no_bias
    Boolean? dna
    Boolean? rna
    String? seed_max_depth
    String? seed_sc_thresh
    String? seed_sc_density
    String? seed_drop_max_len
    String? seed_drop_lim
    String? seed_req_pos
    String? seed_con_sens_match
    String? seed_ssv_length
    Boolean? q_hmm
    Boolean? q_fast_a
    Boolean? qms_a
    String? q_format
    String? t_format
    Boolean? no_null_two
    String? set_size_megabases
    String? seed
    String? w_beta
    String? w_length
    String? block_length
    Boolean? watson
    Boolean? crick
    String? cpu
  }
  command <<<
    nhmmer \
      ~{if defined(direct_output_file) then ("-o " +  '"' + direct_output_file + '"') else ""} \
      ~{if defined(save_multiple_alignment) then ("-A " +  '"' + save_multiple_alignment + '"') else ""} \
      ~{if defined(tbl_out) then ("--tblout " +  '"' + tbl_out + '"') else ""} \
      ~{if defined(df_am_tbl_out) then ("--dfamtblout " +  '"' + df_am_tbl_out + '"') else ""} \
      ~{if defined(ali_scores_out) then ("--aliscoresout " +  '"' + ali_scores_out + '"') else ""} \
      ~{if defined(hmm_out) then ("--hmmout " +  '"' + hmm_out + '"') else ""} \
      ~{true="--acc" false="" acc} \
      ~{true="--noali" false="" no_ali} \
      ~{true="--notextw" false="" no_text_w} \
      ~{if defined(text_w) then ("--textw " +  '"' + text_w + '"') else ""} \
      ~{true="--singlemx" false="" single_mx} \
      ~{if defined(popen) then ("--popen " +  '"' + popen + '"') else ""} \
      ~{if defined(p_extend) then ("--pextend " +  '"' + p_extend + '"') else ""} \
      ~{if defined(mx_file) then ("--mxfile " +  '"' + mx_file + '"') else ""} \
      ~{if defined(report_sequences_evalue) then ("-E " +  '"' + report_sequences_evalue + '"') else ""} \
      ~{if defined(report_sequences_threshold) then ("-T " +  '"' + report_sequences_threshold + '"') else ""} \
      ~{if defined(ince) then ("--incE " +  '"' + ince + '"') else ""} \
      ~{if defined(in_ct) then ("--incT " +  '"' + in_ct + '"') else ""} \
      ~{true="--cut_ga" false="" cut_ga} \
      ~{true="--cut_nc" false="" cut_nc} \
      ~{true="--cut_tc" false="" cut_tc} \
      ~{true="--max" false="" max} \
      ~{if defined(fone) then ("--F1 " +  '"' + fone + '"') else ""} \
      ~{if defined(f_two) then ("--F2 " +  '"' + f_two + '"') else ""} \
      ~{if defined(f_three) then ("--F3 " +  '"' + f_three + '"') else ""} \
      ~{true="--nobias" false="" no_bias} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{if defined(seed_max_depth) then ("--seed_max_depth " +  '"' + seed_max_depth + '"') else ""} \
      ~{if defined(seed_sc_thresh) then ("--seed_sc_thresh " +  '"' + seed_sc_thresh + '"') else ""} \
      ~{if defined(seed_sc_density) then ("--seed_sc_density " +  '"' + seed_sc_density + '"') else ""} \
      ~{if defined(seed_drop_max_len) then ("--seed_drop_max_len " +  '"' + seed_drop_max_len + '"') else ""} \
      ~{if defined(seed_drop_lim) then ("--seed_drop_lim " +  '"' + seed_drop_lim + '"') else ""} \
      ~{if defined(seed_req_pos) then ("--seed_req_pos " +  '"' + seed_req_pos + '"') else ""} \
      ~{if defined(seed_con_sens_match) then ("--seed_consens_match " +  '"' + seed_con_sens_match + '"') else ""} \
      ~{if defined(seed_ssv_length) then ("--seed_ssv_length " +  '"' + seed_ssv_length + '"') else ""} \
      ~{true="--qhmm" false="" q_hmm} \
      ~{true="--qfasta" false="" q_fast_a} \
      ~{true="--qmsa" false="" qms_a} \
      ~{if defined(q_format) then ("--qformat " +  '"' + q_format + '"') else ""} \
      ~{if defined(t_format) then ("--tformat " +  '"' + t_format + '"') else ""} \
      ~{true="--nonull2" false="" no_null_two} \
      ~{if defined(set_size_megabases) then ("-Z " +  '"' + set_size_megabases + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(w_beta) then ("--w_beta " +  '"' + w_beta + '"') else ""} \
      ~{if defined(w_length) then ("--w_length " +  '"' + w_length + '"') else ""} \
      ~{if defined(block_length) then ("--block_length " +  '"' + block_length + '"') else ""} \
      ~{true="--watson" false="" watson} \
      ~{true="--crick" false="" crick} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""}
  >>>
  parameter_meta {
    direct_output_file: ": direct output to file <f>, not stdout"
    save_multiple_alignment: ": save multiple alignment of all hits to file <f>"
    tbl_out: ": save parseable table of hits to file <f>"
    df_am_tbl_out: ": save table of hits to file, in Dfam format <f>"
    ali_scores_out: ": save scores for each position in each alignment to <f>"
    hmm_out: ": if input is alignment(s), write produced hmms to file <f>"
    acc: ": prefer accessions over names in output"
    no_ali: ": don't output alignments, so output is smaller"
    no_text_w: ": unlimit ASCII text output line width"
    text_w: ": set max width of ASCII text output lines  [120]  (n>=120)"
    single_mx: ": use substitution score matrix w/ single-sequence MSA-format inputs"
    popen: ": gap open probability  [0.03125]  (0<=x<0.5)"
    p_extend: ": gap extend probability  [0.75]  (0<=x<1)"
    mx_file: ": read substitution score matrix from file <f>"
    report_sequences_evalue: ": report sequences <= this E-value threshold in output  [10.0]  (x>0)"
    report_sequences_threshold: ": report sequences >= this score threshold in output"
    ince: ": consider sequences <= this E-value threshold as significant  [0.01]  (x>0)"
    in_ct: ": consider sequences >= this score threshold as significant"
    cut_ga: ": use profile's GA gathering cutoffs to set all thresholding"
    cut_nc: ": use profile's NC noise cutoffs to set all thresholding"
    cut_tc: ": use profile's TC trusted cutoffs to set all thresholding"
    max: ": Turn all heuristic filters off (less speed, more power)"
    fone: ": Stage 1 (SSV) threshold: promote hits w/ P <= F1"
    f_two: ": Stage 2 (Vit) threshold: promote hits w/ P <= F2  [3e-3]"
    f_three: ": Stage 3 (Fwd) threshold: promote hits w/ P <= F3  [3e-5]"
    no_bias: ": turn off composition bias filter"
    dna: ": input alignment is DNA sequence data"
    rna: ": input alignment is RNA sequence data"
    seed_max_depth: ": seed length at which bit threshold must be met  [15]"
    seed_sc_thresh: ": Default req. score for FM seed (bits)  [15]"
    seed_sc_density: ": seed must maintain this bit density from one of two ends  [0.8]"
    seed_drop_max_len: ": maximum run length with score under (max - [fm_drop_lim])  [4]"
    seed_drop_lim: ": in seed, max drop in a run of length [fm_drop_max_len]  [0.3]"
    seed_req_pos: ": minimum number consecutive positive scores in seed  [5]"
    seed_con_sens_match: ": <n> consecutive matches to consensus will override score threshold  [11]"
    seed_ssv_length: ": length of window around FM seed to get full SSV diagonal  [70]"
    q_hmm: ": assert query is an hmm file"
    q_fast_a: ": assert query is an unaligned fasta file"
    qms_a: ": assert query is an aligned file format; can use --qformat to specify"
    q_format: ": assert query msa <seqfile> is in format <s>"
    t_format: ": assert target <seqdb> is in format <s>"
    no_null_two: ": turn off biased composition score corrections"
    set_size_megabases: ": set database size (Megabases) to <x> for E-value calculations  (x>0)"
    seed: ": set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]  (n>=0)"
    w_beta: ": tail mass at which window length is determined"
    w_length: ": window length - essentially max expected hit length"
    block_length: ": length of blocks read from target database (threaded)   (n>=50000)"
    watson: ": only search the top strand"
    crick: ": only search the bottom strand"
    cpu: ": number of parallel CPU workers to use for multithreads  [2]  (n>=0)"
  }
}