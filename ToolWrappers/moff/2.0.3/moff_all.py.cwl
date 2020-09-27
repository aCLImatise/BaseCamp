class: CommandLineTool
id: moff_all.py.cwl
inputs:
- id: in_loc_in
  doc: specify the folder of the input MS2 peptide list files
  type: Directory
  inputBinding:
    prefix: --loc_in
- id: in_tsv_list
  doc: "[TSV_LIST [TSV_LIST ...]]\nspecify the mzid file as a list"
  type: boolean
  inputBinding:
    prefix: --tsv_list
- id: in_raw_list
  doc: "[RAW_LIST [RAW_LIST ...]]\nspecify the raw file as a list"
  type: boolean
  inputBinding:
    prefix: --raw_list
- id: in_sample
  doc: specify witch replicated to use for mbr reg_exp are
  type: string
  inputBinding:
    prefix: --sample
- id: in_log_label
  doc: "a label name to use for the log file. Default value:\nmoFF"
  type: File
  inputBinding:
    prefix: --log_label
- id: in_w_filt
  doc: "width value of the filter k * mean(Dist_Malahobis).\nDefault value: 2"
  type: long
  inputBinding:
    prefix: --w_filt
- id: in_out_flag
  doc: "if set, outliers for rt time allignment are filtered.\nDefault value: True"
  type: boolean
  inputBinding:
    prefix: --out_flag
- id: in_w_comb
  doc: "if set, RT model combination is weighted using traing\nmodel errors: Default\
    \ value: False"
  type: boolean
  inputBinding:
    prefix: --w_comb
- id: in_to_l
  doc: "specify the tollerance parameter in ppm. Default\nvalue: 10"
  type: long
  inputBinding:
    prefix: --tol
- id: in_xic_length
  doc: 'specify rt window for xic (minutes). Default value: 3'
  type: long
  inputBinding:
    prefix: --xic_length
- id: in_rt_peak_win
  doc: "specify the time windows for the peak (minutes).\nDefault value: 1"
  type: long
  inputBinding:
    prefix: --rt_peak_win
- id: in_rt_peak_win_match
  doc: "specify the time windows for the matched peptide peak\n(minutes). Default\
    \ value: 1.2"
  type: double
  inputBinding:
    prefix: --rt_peak_win_match
- id: in_raw_repo
  doc: specify the raw file repository
  type: File
  inputBinding:
    prefix: --raw_repo
- id: in_loc_out
  doc: specify the folder output
  type: Directory
  inputBinding:
    prefix: --loc_out
- id: in_rt_feat_file
  doc: "specify the file that contains the features to use in\nthe match-between-run\
    \ RT prediction"
  type: File
  inputBinding:
    prefix: --rt_feat_file
- id: in_peptide_summary
  doc: "if set, export a peptide intesity summary tab-delited\nfile. Default value:\
    \ False"
  type: boolean
  inputBinding:
    prefix: --peptide_summary
- id: in_tag_pep_sum
  doc: "a tag text used for peptide summary file name\n(peptide_summary_intensity_\
    \ + tag + .tab ). Default\nvalue: moFF_run"
  type: File
  inputBinding:
    prefix: --tag_pepsum
- id: in_match_filter
  doc: "If set, filtering on the matched peak is activated.\nDefault value: False"
  type: boolean
  inputBinding:
    prefix: --match_filter
- id: in_ptm_file
  doc: name of json ptm file. default file ptm_setting.json
  type: File
  inputBinding:
    prefix: --ptm_file
- id: in_quantile_thr_filtering
  doc: "quantile value used to compute the filtering threshold\nfor the matched peak\
    \ .Default value: 0.75"
  type: double
  inputBinding:
    prefix: --quantile_thr_filtering
- id: in_sample_size
  doc: "percentage of MS2 peptide used to estimated the\nthreshold. Default value:\
    \ 0.20"
  type: long
  inputBinding:
    prefix: --sample_size
- id: in_mbr
  doc: "select the moFF workflow: on to run mbr + apex , off\nto run only apex, only\
    \ to run obnly mbr. Default\nvalue: on"
  type: string
  inputBinding:
    prefix: --mbr
- id: in_cpu
  doc: "number of cpu. as default value it will detect\nautomaticaly the CPU number\
    \ in your machine.\n"
  type: long
  inputBinding:
    prefix: --cpu
- id: in_valid
  doc: --ext EXT             specify the file extentention of the input like.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_loc_out
  doc: specify the folder output
  type: Directory
  outputBinding:
    glob: $(inputs.in_loc_out)
cwlVersion: v1.1
baseCommand:
- moff_all.py
