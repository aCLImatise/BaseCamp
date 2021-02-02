version 1.0

task Phmmer {
  input {
    File? direct_output_file
    File? save_multiple_alignment
    File? tbl_out
    File? dom_tbl_out
    File? pfam_tbl_out
    Boolean? acc
    Boolean? no_ali
    Boolean? no_text_w
    Int? text_w
    String? popen
    String? p_extend
    String? mx
    File? mx_file
    Float? report_sequences_evalue_threshold
    String? report_sequences_score_threshold
    Float? dome
    String? do_mt
    String? ince
    String? in_ct
    String? inc_dome
    String? inc_do_mt
    Boolean? max
    Int? fone
    Int? f_two
    Int? f_three
    Boolean? no_bias
    Int? eml
    Int? emn
    Int? evl
    Int? evn
    Int? efl
    Int? efn
    Float? eft
    Boolean? no_null_two
    String? set_comparisons_done
    String? do_mz
    Int? seed
    String? q_format
    String? t_format
    Int? cpu
    Boolean? options
  }
  command <<<
    phmmer \
      ~{if defined(direct_output_file) then ("-o " +  '"' + direct_output_file + '"') else ""} \
      ~{if defined(save_multiple_alignment) then ("-A " +  '"' + save_multiple_alignment + '"') else ""} \
      ~{if defined(tbl_out) then ("--tblout " +  '"' + tbl_out + '"') else ""} \
      ~{if defined(dom_tbl_out) then ("--domtblout " +  '"' + dom_tbl_out + '"') else ""} \
      ~{if defined(pfam_tbl_out) then ("--pfamtblout " +  '"' + pfam_tbl_out + '"') else ""} \
      ~{if (acc) then "--acc" else ""} \
      ~{if (no_ali) then "--noali" else ""} \
      ~{if (no_text_w) then "--notextw" else ""} \
      ~{if defined(text_w) then ("--textw " +  '"' + text_w + '"') else ""} \
      ~{if defined(popen) then ("--popen " +  '"' + popen + '"') else ""} \
      ~{if defined(p_extend) then ("--pextend " +  '"' + p_extend + '"') else ""} \
      ~{if defined(mx) then ("--mx " +  '"' + mx + '"') else ""} \
      ~{if defined(mx_file) then ("--mxfile " +  '"' + mx_file + '"') else ""} \
      ~{if defined(report_sequences_evalue_threshold) then ("-E " +  '"' + report_sequences_evalue_threshold + '"') else ""} \
      ~{if defined(report_sequences_score_threshold) then ("-T " +  '"' + report_sequences_score_threshold + '"') else ""} \
      ~{if defined(dome) then ("--domE " +  '"' + dome + '"') else ""} \
      ~{if defined(do_mt) then ("--domT " +  '"' + do_mt + '"') else ""} \
      ~{if defined(ince) then ("--incE " +  '"' + ince + '"') else ""} \
      ~{if defined(in_ct) then ("--incT " +  '"' + in_ct + '"') else ""} \
      ~{if defined(inc_dome) then ("--incdomE " +  '"' + inc_dome + '"') else ""} \
      ~{if defined(inc_do_mt) then ("--incdomT " +  '"' + inc_do_mt + '"') else ""} \
      ~{if (max) then "--max" else ""} \
      ~{if defined(fone) then ("--F1 " +  '"' + fone + '"') else ""} \
      ~{if defined(f_two) then ("--F2 " +  '"' + f_two + '"') else ""} \
      ~{if defined(f_three) then ("--F3 " +  '"' + f_three + '"') else ""} \
      ~{if (no_bias) then "--nobias" else ""} \
      ~{if defined(eml) then ("--EmL " +  '"' + eml + '"') else ""} \
      ~{if defined(emn) then ("--EmN " +  '"' + emn + '"') else ""} \
      ~{if defined(evl) then ("--EvL " +  '"' + evl + '"') else ""} \
      ~{if defined(evn) then ("--EvN " +  '"' + evn + '"') else ""} \
      ~{if defined(efl) then ("--EfL " +  '"' + efl + '"') else ""} \
      ~{if defined(efn) then ("--EfN " +  '"' + efn + '"') else ""} \
      ~{if defined(eft) then ("--Eft " +  '"' + eft + '"') else ""} \
      ~{if (no_null_two) then "--nonull2" else ""} \
      ~{if defined(set_comparisons_done) then ("-Z " +  '"' + set_comparisons_done + '"') else ""} \
      ~{if defined(do_mz) then ("--domZ " +  '"' + do_mz + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(q_format) then ("--qformat " +  '"' + q_format + '"') else ""} \
      ~{if defined(t_format) then ("--tformat " +  '"' + t_format + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    direct_output_file: ": direct output to file <f>, not stdout"
    save_multiple_alignment: ": save multiple alignment of hits to file <f>"
    tbl_out: ": save parseable table of per-sequence hits to file <f>"
    dom_tbl_out: ": save parseable table of per-domain hits to file <f>"
    pfam_tbl_out: ": save table of hits and domains to file, in Pfam format <f>"
    acc: ": prefer accessions over names in output"
    no_ali: ": don't output alignments, so output is smaller"
    no_text_w: ": unlimit ASCII text output line width"
    text_w: ": set max width of ASCII text output lines  [120]  (n>=120)"
    popen: ": gap open probability"
    p_extend: ": gap extend probability"
    mx: ": substitution score matrix choice (of some built-in matrices)"
    mx_file: ": read substitution score matrix from file <f>"
    report_sequences_evalue_threshold: ": report sequences <= this E-value threshold in output  [10.0]  (x>0)"
    report_sequences_score_threshold: ": report sequences >= this score threshold in output"
    dome: ": report domains <= this E-value threshold in output  [10.0]  (x>0)"
    do_mt: ": report domains >= this score cutoff in output"
    ince: ": consider sequences <= this E-value threshold as significant"
    in_ct: ": consider sequences >= this score threshold as significant"
    inc_dome: ": consider domains <= this E-value threshold as significant"
    inc_do_mt: ": consider domains >= this score threshold as significant"
    max: ": Turn all heuristic filters off (less speed, more power)"
    fone: ": Stage 1 (MSV) threshold: promote hits w/ P <= F1  [0.02]"
    f_two: ": Stage 2 (Vit) threshold: promote hits w/ P <= F2  [1e-3]"
    f_three: ": Stage 3 (Fwd) threshold: promote hits w/ P <= F3  [1e-5]"
    no_bias: ": turn off composition bias filter"
    eml: ": length of sequences for MSV Gumbel mu fit  [200]  (n>0)"
    emn: ": number of sequences for MSV Gumbel mu fit  [200]  (n>0)"
    evl: ": length of sequences for Viterbi Gumbel mu fit  [200]  (n>0)"
    evn: ": number of sequences for Viterbi Gumbel mu fit  [200]  (n>0)"
    efl: ": length of sequences for Forward exp tail tau fit  [100]  (n>0)"
    efn: ": number of sequences for Forward exp tail tau fit  [200]  (n>0)"
    eft: ": tail mass for Forward exponential tail tau fit  [0.04]  (0<x<1)"
    no_null_two: ": turn off biased composition score corrections"
    set_comparisons_done: ": set # of comparisons done, for E-value calculation"
    do_mz: ": set # of significant seqs, for domain E-value calculation"
    seed: ": set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]"
    q_format: ": assert query <seqfile> is in format <s>: no autodetection"
    t_format: ": assert target <seqdb> is in format <s>>: no autodetection"
    cpu: ": number of parallel CPU workers to use for multithreads  [2]"
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_direct_output_file = "${in_direct_output_file}"
  }
}