version 1.0

task Nhmmscan {
  input {
    String? direct_output_file
    String? tbl_out
    String? df_am_tbl_out
    String? ali_scores_out
    Boolean? acc
    Boolean? no_ali
    Boolean? no_text_w
    String? text_w
    String? report_models_evalue
    String? report_models_threshold
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
    String? q_format
    Boolean? no_null_two
    String? set_comparisons_done
    String? seed
    String? w_beta
    String? w_length
    Boolean? watson
    Boolean? crick
    String? cpu
    Boolean? options
  }
  command <<<
    nhmmscan \
      ~{if defined(direct_output_file) then ("-o " +  '"' + direct_output_file + '"') else ""} \
      ~{if defined(tbl_out) then ("--tblout " +  '"' + tbl_out + '"') else ""} \
      ~{if defined(df_am_tbl_out) then ("--dfamtblout " +  '"' + df_am_tbl_out + '"') else ""} \
      ~{if defined(ali_scores_out) then ("--aliscoresout " +  '"' + ali_scores_out + '"') else ""} \
      ~{true="--acc" false="" acc} \
      ~{true="--noali" false="" no_ali} \
      ~{true="--notextw" false="" no_text_w} \
      ~{if defined(text_w) then ("--textw " +  '"' + text_w + '"') else ""} \
      ~{if defined(report_models_evalue) then ("-E " +  '"' + report_models_evalue + '"') else ""} \
      ~{if defined(report_models_threshold) then ("-T " +  '"' + report_models_threshold + '"') else ""} \
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
      ~{if defined(q_format) then ("--qformat " +  '"' + q_format + '"') else ""} \
      ~{true="--nonull2" false="" no_null_two} \
      ~{if defined(set_comparisons_done) then ("-Z " +  '"' + set_comparisons_done + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(w_beta) then ("--w_beta " +  '"' + w_beta + '"') else ""} \
      ~{if defined(w_length) then ("--w_length " +  '"' + w_length + '"') else ""} \
      ~{true="--watson" false="" watson} \
      ~{true="--crick" false="" crick} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    direct_output_file: ": direct output to file <f>, not stdout"
    tbl_out: ": save parseable table of per-sequence hits to file <f>"
    df_am_tbl_out: ": save table of hits to file, in Dfam format <f>"
    ali_scores_out: ": save of scores for each position in each alignment to <f>"
    acc: ": prefer accessions over names in output"
    no_ali: ": don't output alignments, so output is smaller"
    no_text_w: ": unlimit ASCII text output line width"
    text_w: ": set max width of ASCII text output lines  [120]  (n>=120)"
    report_models_evalue: ": report models <= this E-value threshold in output  [10.0]  (x>0)"
    report_models_threshold: ": report models >= this score threshold in output"
    ince: ": consider models <= this E-value threshold as significant  [0.01]"
    in_ct: ": consider models >= this score threshold as significant"
    cut_ga: ": use profile's GA gathering cutoffs to set all thresholding"
    cut_nc: ": use profile's NC noise cutoffs to set all thresholding"
    cut_tc: ": use profile's TC trusted cutoffs to set all thresholding"
    max: ": Turn all heuristic filters off (less speed, more power)"
    fone: ": MSV threshold: promote hits w/ P <= F1  [0.02]"
    f_two: ": Vit threshold: promote hits w/ P <= F2  [3e-3]"
    f_three: ": Fwd threshold: promote hits w/ P <= F3  [3e-5]"
    no_bias: ": turn off composition bias filter"
    q_format: ": assert input <seqfile> is in format <s>"
    no_null_two: ": turn off biased composition score corrections"
    set_comparisons_done: ": set # of comparisons done, for E-value calculation"
    seed: ": set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]"
    w_beta: ": tail mass at which window length is determined"
    w_length: ": window length - essentially max expected hit length "
    watson: ": only search the top strand"
    crick: ": only search the bottom strand"
    cpu: ": number of parallel CPU workers to use for multithreads  [2]"
    options: ""
  }
}