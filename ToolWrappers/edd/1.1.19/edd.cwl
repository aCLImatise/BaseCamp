class: CommandLineTool
id: ../../../edd.cwl
inputs:
- id: in_bin_size
  doc: "An integer specifying the bin size in KB. Will auto\nselect bin size based\
    \ on input data if not specified."
  type: long
  inputBinding:
    prefix: --bin-size
- id: in_num_trials
  doc: Number of trials in monte carlo simulation
  type: long
  inputBinding:
    prefix: --num-trials
- id: in_nprocs
  doc: "Number of processes to use for the monte carlo\nsimulation. One processes\
    \ per physical CPU core is\nrecommended."
  type: long
  inputBinding:
    prefix: --nprocs
- id: in_fdr
  doc: ''
  type: string
  inputBinding:
    prefix: --fdr
- id: in_gap_penalty
  doc: "Leave unspecificed for auto-estimation. Adjusts how\nsensitive EDD is to heterogeneity\
    \ within domains.\nDepends on Signal/Noise ratio of source files and on\nthe interests\
    \ of the researcher. A \"low\" value favors\nlarge enriched domains with more\
    \ heterogeneity. A\n\"high\" value favors smaller enriched domains devoid of\n\
    heterogeneity."
  type: string
  inputBinding:
    prefix: --gap-penalty
- id: in_config_file
  doc: "Path to user specified EDD configuration file. See EDD\nmanual section about\
    \ configuration for more\ninformation."
  type: File
  inputBinding:
    prefix: --config-file
- id: in_write_log_ratios
  doc: Write log ratios to file.
  type: boolean
  inputBinding:
    prefix: --write-log-ratios
- id: in_write_bin_scores
  doc: Write bin scores to file.
  type: boolean
  inputBinding:
    prefix: --write-bin-scores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- edd
