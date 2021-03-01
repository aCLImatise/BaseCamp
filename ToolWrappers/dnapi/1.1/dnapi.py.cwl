class: CommandLineTool
id: dnapi.py.cwl
inputs:
- id: in_range_predict_adaptersdefault
  doc: "[KMER_BEG:KMER_END:INCREMENT | KMER_LEN]\nrange of kmers or a single kmer\
    \ to predict 3'adapters\n(default: 9:11:2)"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_range_single_ratio
  doc: "[RATIO_BEG:RATIO_END:INTCREMENT | RATIO]\nrange of ratios or a single ratio\
    \ to filter less\nabundant kmers (default: 1.2:1.4:0.1)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_show_all
  doc: show other candidates if any
  type: boolean?
  inputBinding:
    prefix: --show-all
- id: in_map_command
  doc: read mapping command to be tested
  type: string?
  inputBinding:
    prefix: --map-command
- id: in_subsample_rate
  doc: 'subsampling fraction of reads (default: 1.0)'
  type: double?
  inputBinding:
    prefix: --subsample-rate
- id: in_output_dir
  doc: "output directory to write report and cleansed reads\n(default: ./dnapi_out)"
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_no_output_files
  doc: only display report and suppress output files
  type: boolean?
  inputBinding:
    prefix: --no-output-files
- id: in_temp_dir
  doc: 'place to make temporary directory (default: /tmp)'
  type: Directory?
  inputBinding:
    prefix: --temp-dir
- id: in_adapter_seq
  doc: list of 3'adapters for evaluation
  type: string[]
  inputBinding:
    prefix: --adapter-seq
- id: in_prefix_match
  doc: "3'adapter match length to trim (default: 7)"
  type: long?
  inputBinding:
    prefix: --prefix-match
- id: in_min_len
  doc: 'minimum read length to keep for mapping (default: 16)'
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_max_len
  doc: 'maximum read length to keep for mapping (default: 36)'
  type: long?
  inputBinding:
    prefix: --max-len
- id: in_trim_five_p
  doc: "trim specified number of bases from 5'ends after\nadapter removal (default:\
    \ 0)"
  type: long?
  inputBinding:
    prefix: --trim-5p
- id: in_trim_three_p
  doc: "trim specified number of bases from 3'ends after\nadapter removal (default:\
    \ 0)"
  type: long?
  inputBinding:
    prefix: --trim-3p
- id: in_fast_q
  doc: including stdin or compressed file {zip,gz,tar,bz}
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "output directory to write report and cleansed reads\n(default: ./dnapi_out)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- dnapi.py
