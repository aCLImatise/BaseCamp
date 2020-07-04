version 1.0

task MoffAll.py {
  input {
    String? loc_in
    Boolean? tsv_list
    Boolean? raw_list
    String? sample
    String? ext
    String? log_label
    String? w_filt
    Boolean? out_flag
    Boolean? w_comb
    String? to_l
    String? xic_length
    String? rt_peak_win
    String? rt_peak_win_match
    String? raw_repo
    String? loc_out
    String? rt_feat_file
    Boolean? peptide_summary
    String? tag_pep_sum
    Boolean? match_filter
    String? ptm_file
    String? quantile_thr_filtering
    String? sample_size
    String? mbr
    String? cpu
  }
  command <<<
    moff_all.py \
      ~{if defined(loc_in) then ("--loc_in " +  '"' + loc_in + '"') else ""} \
      ~{true="--tsv_list" false="" tsv_list} \
      ~{true="--raw_list" false="" raw_list} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(ext) then ("--ext " +  '"' + ext + '"') else ""} \
      ~{if defined(log_label) then ("--log_label " +  '"' + log_label + '"') else ""} \
      ~{if defined(w_filt) then ("--w_filt " +  '"' + w_filt + '"') else ""} \
      ~{true="--out_flag" false="" out_flag} \
      ~{true="--w_comb" false="" w_comb} \
      ~{if defined(to_l) then ("--tol " +  '"' + to_l + '"') else ""} \
      ~{if defined(xic_length) then ("--xic_length " +  '"' + xic_length + '"') else ""} \
      ~{if defined(rt_peak_win) then ("--rt_peak_win " +  '"' + rt_peak_win + '"') else ""} \
      ~{if defined(rt_peak_win_match) then ("--rt_peak_win_match " +  '"' + rt_peak_win_match + '"') else ""} \
      ~{if defined(raw_repo) then ("--raw_repo " +  '"' + raw_repo + '"') else ""} \
      ~{if defined(loc_out) then ("--loc_out " +  '"' + loc_out + '"') else ""} \
      ~{if defined(rt_feat_file) then ("--rt_feat_file " +  '"' + rt_feat_file + '"') else ""} \
      ~{true="--peptide_summary" false="" peptide_summary} \
      ~{if defined(tag_pep_sum) then ("--tag_pepsum " +  '"' + tag_pep_sum + '"') else ""} \
      ~{true="--match_filter" false="" match_filter} \
      ~{if defined(ptm_file) then ("--ptm_file " +  '"' + ptm_file + '"') else ""} \
      ~{if defined(quantile_thr_filtering) then ("--quantile_thr_filtering " +  '"' + quantile_thr_filtering + '"') else ""} \
      ~{if defined(sample_size) then ("--sample_size " +  '"' + sample_size + '"') else ""} \
      ~{if defined(mbr) then ("--mbr " +  '"' + mbr + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""}
  >>>
  parameter_meta {
    loc_in: "specify the folder of the input MS2 peptide list files"
    tsv_list: "[TSV_LIST [TSV_LIST ...]] specify the mzid file as a list"
    raw_list: "[RAW_LIST [RAW_LIST ...]] specify the raw file as a list"
    sample: "specify witch replicated to use for mbr reg_exp are valid"
    ext: "specify the file extentention of the input like. Default value: txt"
    log_label: "a label name to use for the log file. Default value: moFF"
    w_filt: "width value of the filter k * mean(Dist_Malahobis). Default value: 2"
    out_flag: "if set, outliers for rt time allignment are filtered. Default value: True"
    w_comb: "if set, RT model combination is weighted using traing model errors: Default value: False"
    to_l: "specify the tollerance parameter in ppm. Default value: 10"
    xic_length: "specify rt window for xic (minutes). Default value: 3"
    rt_peak_win: "specify the time windows for the peak (minutes). Default value: 1"
    rt_peak_win_match: "specify the time windows for the matched peptide peak (minutes). Default value: 1.2"
    raw_repo: "specify the raw file repository"
    loc_out: "specify the folder output"
    rt_feat_file: "specify the file that contains the features to use in the match-between-run RT prediction"
    peptide_summary: "if set, export a peptide intesity summary tab-delited file. Default value: False"
    tag_pep_sum: "a tag text used for peptide summary file name (peptide_summary_intensity_ + tag + .tab ). Default value: moFF_run"
    match_filter: "If set, filtering on the matched peak is activated. Default value: False"
    ptm_file: "name of json ptm file. default file ptm_setting.json"
    quantile_thr_filtering: "quantile value used to compute the filtering threshold for the matched peak .Default value: 0.75"
    sample_size: "percentage of MS2 peptide used to estimated the threshold. Default value: 0.20"
    mbr: "select the moFF workflow: on to run mbr + apex , off to run only apex, only to run obnly mbr. Default value: on"
    cpu: "number of cpu. as default value it will detect automaticaly the CPU number in your machine."
  }
}