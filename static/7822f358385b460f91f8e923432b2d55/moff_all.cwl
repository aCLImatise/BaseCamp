class: CommandLineTool
id: moff_all.py.cwl
inputs:
- id: loc_in
  doc: specify the folder of the input MS2 peptide list files
  type: string
  inputBinding:
    prefix: --loc_in
- id: tsv_list
  doc: '[TSV_LIST [TSV_LIST ...]] specify the mzid file as a list'
  type: boolean
  inputBinding:
    prefix: --tsv_list
- id: raw_list
  doc: '[RAW_LIST [RAW_LIST ...]] specify the raw file as a list'
  type: boolean
  inputBinding:
    prefix: --raw_list
- id: sample
  doc: specify witch replicated to use for mbr reg_exp are valid
  type: string
  inputBinding:
    prefix: --sample
- id: ext
  doc: 'specify the file extentention of the input like. Default value: txt'
  type: string
  inputBinding:
    prefix: --ext
- id: log_label
  doc: 'a label name to use for the log file. Default value: moFF'
  type: string
  inputBinding:
    prefix: --log_label
- id: w_filt
  doc: 'width value of the filter k * mean(Dist_Malahobis). Default value: 2'
  type: string
  inputBinding:
    prefix: --w_filt
- id: out_flag
  doc: 'if set, outliers for rt time allignment are filtered. Default value: True'
  type: boolean
  inputBinding:
    prefix: --out_flag
- id: w_comb
  doc: 'if set, RT model combination is weighted using traing model errors: Default
    value: False'
  type: boolean
  inputBinding:
    prefix: --w_comb
- id: to_l
  doc: 'specify the tollerance parameter in ppm. Default value: 10'
  type: string
  inputBinding:
    prefix: --tol
- id: xic_length
  doc: 'specify rt window for xic (minutes). Default value: 3'
  type: string
  inputBinding:
    prefix: --xic_length
- id: rt_peak_win
  doc: 'specify the time windows for the peak (minutes). Default value: 1'
  type: string
  inputBinding:
    prefix: --rt_peak_win
- id: rt_peak_win_match
  doc: 'specify the time windows for the matched peptide peak (minutes). Default value:
    1.2'
  type: string
  inputBinding:
    prefix: --rt_peak_win_match
- id: raw_repo
  doc: specify the raw file repository
  type: string
  inputBinding:
    prefix: --raw_repo
- id: loc_out
  doc: specify the folder output
  type: string
  inputBinding:
    prefix: --loc_out
- id: rt_feat_file
  doc: specify the file that contains the features to use in the match-between-run
    RT prediction
  type: string
  inputBinding:
    prefix: --rt_feat_file
- id: peptide_summary
  doc: 'if set, export a peptide intesity summary tab-delited file. Default value:
    False'
  type: boolean
  inputBinding:
    prefix: --peptide_summary
- id: tag_pep_sum
  doc: 'a tag text used for peptide summary file name (peptide_summary_intensity_
    + tag + .tab ). Default value: moFF_run'
  type: string
  inputBinding:
    prefix: --tag_pepsum
- id: match_filter
  doc: 'If set, filtering on the matched peak is activated. Default value: False'
  type: boolean
  inputBinding:
    prefix: --match_filter
- id: ptm_file
  doc: name of json ptm file. default file ptm_setting.json
  type: string
  inputBinding:
    prefix: --ptm_file
- id: quantile_thr_filtering
  doc: 'quantile value used to compute the filtering threshold for the matched peak
    .Default value: 0.75'
  type: string
  inputBinding:
    prefix: --quantile_thr_filtering
- id: sample_size
  doc: 'percentage of MS2 peptide used to estimated the threshold. Default value:
    0.20'
  type: string
  inputBinding:
    prefix: --sample_size
- id: mbr
  doc: 'select the moFF workflow: on to run mbr + apex , off to run only apex, only
    to run obnly mbr. Default value: on'
  type: string
  inputBinding:
    prefix: --mbr
- id: cpu
  doc: number of cpu. as default value it will detect automaticaly the CPU number
    in your machine.
  type: string
  inputBinding:
    prefix: --cpu
outputs: []
cwlVersion: v1.1
baseCommand:
- moff_all.py
