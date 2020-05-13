class: CommandLineTool
id: dnapi.py.cwl
inputs:
- id: fast_q
  doc: including stdin or compressed file {zip,gz,tar,bz}
  type: string
  inputBinding:
    position: 0
- id: k
  doc: "[KMER_BEG:KMER_END:INCREMENT | KMER_LEN] range of kmers or a single kmer to\
    \ predict 3'adapters (default: 9:11:2)"
  type: boolean
  inputBinding:
    prefix: -k
- id: r
  doc: '[RATIO_BEG:RATIO_END:INTCREMENT | RATIO] range of ratios or a single ratio
    to filter less abundant kmers (default: 1.2:1.4:0.1)'
  type: boolean
  inputBinding:
    prefix: -r
- id: show_all
  doc: show other candidates if any
  type: boolean
  inputBinding:
    prefix: --show-all
- id: map_command
  doc: read mapping command to be tested
  type: string
  inputBinding:
    prefix: --map-command
- id: subsample_rate
  doc: 'subsampling fraction of reads (default: 1.0)'
  type: double
  inputBinding:
    prefix: --subsample-rate
- id: output_dir
  doc: 'output directory to write report and cleansed reads (default: ./dnapi_out)'
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: no_output_files
  doc: only display report and suppress output files
  type: boolean
  inputBinding:
    prefix: --no-output-files
- id: temp_dir
  doc: 'place to make temporary directory (default: /tmp)'
  type: Directory
  inputBinding:
    prefix: --temp-dir
- id: adapter_seq
  doc: list of 3'adapters for evaluation
  type: string[]
  inputBinding:
    prefix: --adapter-seq
- id: prefix_match
  doc: "3'adapter match length to trim (default: 7)"
  type: long
  inputBinding:
    prefix: --prefix-match
- id: min_len
  doc: 'minimum read length to keep for mapping (default: 16)'
  type: long
  inputBinding:
    prefix: --min-len
- id: max_len
  doc: 'maximum read length to keep for mapping (default: 36)'
  type: long
  inputBinding:
    prefix: --max-len
- id: trim_5p
  doc: "trim specified number of bases from 5'ends after adapter removal (default:\
    \ 0)"
  type: long
  inputBinding:
    prefix: --trim-5p
- id: trim_3p
  doc: "trim specified number of bases from 3'ends after adapter removal (default:\
    \ 0)"
  type: long
  inputBinding:
    prefix: --trim-3p
outputs: []
cwlVersion: v1.1
baseCommand:
- dnapi.py
