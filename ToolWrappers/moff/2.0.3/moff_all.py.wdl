version 1.0

task MoffAllpy {
  input {
    Directory? loc_in
    Boolean? tsv_list
    Boolean? raw_list
    String? sample
    File? log_label
    Int? w_filt
    Boolean? out_flag
    Boolean? w_comb
    Int? to_l
    Int? xic_length
    Int? rt_peak_win
    Float? rt_peak_win_match
    File? raw_repo
    Directory? loc_out
    File? rt_feat_file
    Boolean? peptide_summary
    File? tag_pep_sum
    Boolean? match_filter
    File? ptm_file
    Float? quantile_thr_filtering
    Int? sample_size
    String? mbr
    Int? cpu
    String valid
  }
  command <<<
    moff_all_py \
      ~{valid} \
      ~{if defined(loc_in) then ("--loc_in " +  '"' + loc_in + '"') else ""} \
      ~{if (tsv_list) then "--tsv_list" else ""} \
      ~{if (raw_list) then "--raw_list" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(log_label) then ("--log_label " +  '"' + log_label + '"') else ""} \
      ~{if defined(w_filt) then ("--w_filt " +  '"' + w_filt + '"') else ""} \
      ~{if (out_flag) then "--out_flag" else ""} \
      ~{if (w_comb) then "--w_comb" else ""} \
      ~{if defined(to_l) then ("--tol " +  '"' + to_l + '"') else ""} \
      ~{if defined(xic_length) then ("--xic_length " +  '"' + xic_length + '"') else ""} \
      ~{if defined(rt_peak_win) then ("--rt_peak_win " +  '"' + rt_peak_win + '"') else ""} \
      ~{if defined(rt_peak_win_match) then ("--rt_peak_win_match " +  '"' + rt_peak_win_match + '"') else ""} \
      ~{if defined(raw_repo) then ("--raw_repo " +  '"' + raw_repo + '"') else ""} \
      ~{if defined(loc_out) then ("--loc_out " +  '"' + loc_out + '"') else ""} \
      ~{if defined(rt_feat_file) then ("--rt_feat_file " +  '"' + rt_feat_file + '"') else ""} \
      ~{if (peptide_summary) then "--peptide_summary" else ""} \
      ~{if defined(tag_pep_sum) then ("--tag_pepsum " +  '"' + tag_pep_sum + '"') else ""} \
      ~{if (match_filter) then "--match_filter" else ""} \
      ~{if defined(ptm_file) then ("--ptm_file " +  '"' + ptm_file + '"') else ""} \
      ~{if defined(quantile_thr_filtering) then ("--quantile_thr_filtering " +  '"' + quantile_thr_filtering + '"') else ""} \
      ~{if defined(sample_size) then ("--sample_size " +  '"' + sample_size + '"') else ""} \
      ~{if defined(mbr) then ("--mbr " +  '"' + mbr + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    loc_in: "specify the folder of the input MS2 peptide list files"
    tsv_list: "[TSV_LIST [TSV_LIST ...]]\\nspecify the mzid file as a list"
    raw_list: "[RAW_LIST [RAW_LIST ...]]\\nspecify the raw file as a list"
    sample: "specify witch replicated to use for mbr reg_exp are"
    log_label: "a label name to use for the log file. Default value:\\nmoFF"
    w_filt: "width value of the filter k * mean(Dist_Malahobis).\\nDefault value: 2"
    out_flag: "if set, outliers for rt time allignment are filtered.\\nDefault value: True"
    w_comb: "if set, RT model combination is weighted using traing\\nmodel errors: Default value: False"
    to_l: "specify the tollerance parameter in ppm. Default\\nvalue: 10"
    xic_length: "specify rt window for xic (minutes). Default value: 3"
    rt_peak_win: "specify the time windows for the peak (minutes).\\nDefault value: 1"
    rt_peak_win_match: "specify the time windows for the matched peptide peak\\n(minutes). Default value: 1.2"
    raw_repo: "specify the raw file repository"
    loc_out: "specify the folder output"
    rt_feat_file: "specify the file that contains the features to use in\\nthe match-between-run RT prediction"
    peptide_summary: "if set, export a peptide intesity summary tab-delited\\nfile. Default value: False"
    tag_pep_sum: "a tag text used for peptide summary file name\\n(peptide_summary_intensity_ + tag + .tab ). Default\\nvalue: moFF_run"
    match_filter: "If set, filtering on the matched peak is activated.\\nDefault value: False"
    ptm_file: "name of json ptm file. default file ptm_setting.json"
    quantile_thr_filtering: "quantile value used to compute the filtering threshold\\nfor the matched peak .Default value: 0.75"
    sample_size: "percentage of MS2 peptide used to estimated the\\nthreshold. Default value: 0.20"
    mbr: "select the moFF workflow: on to run mbr + apex , off\\nto run only apex, only to run obnly mbr. Default\\nvalue: on"
    cpu: "number of cpu. as default value it will detect\\nautomaticaly the CPU number in your machine.\\n"
    valid: "--ext EXT             specify the file extentention of the input like."
  }
  output {
    File out_stdout = stdout()
    Directory out_loc_out = "${in_loc_out}"
  }
}