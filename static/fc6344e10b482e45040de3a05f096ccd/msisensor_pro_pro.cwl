class: CommandLineTool
id: ../../../msisensor_pro_pro.cwl
inputs:
- id: string_homopolymer_microsates
  doc: <string>   homopolymer and microsates file
  type: boolean
  inputBinding:
    prefix: -d
- id: string_tumor_file
  doc: <string>   tumor bam file
  type: boolean
  inputBinding:
    prefix: -t
- id: string_output_prefix
  doc: <string>   output prefix
  type: boolean
  inputBinding:
    prefix: -o
- id: string_bed_file
  doc: <string>   bed file, optional
  type: boolean
  inputBinding:
    prefix: -e
- id: double_minimal_threshold
  doc: <double>   minimal threshold for instable sites detection (just for tumor only
    data), default=0.1
  type: boolean
  inputBinding:
    prefix: -i
- id: int_coverage_threshold
  doc: '<int>      coverage threshold for msi analysis, WXS: 20; WGS: 15, default=1'
  type: boolean
  inputBinding:
    prefix: -c
- id: string_choose_format
  doc: '<string>   choose one region, format: 1:10000000-20000000'
  type: boolean
  inputBinding:
    prefix: -r
- id: int_minimal_homopolymer
  doc: <int>      minimal homopolymer size for distribution analysis, default=10
  type: boolean
  inputBinding:
    prefix: -p
- id: int_maximal_homopolymer
  doc: <int>      maximal homopolymer size for distribution analysis, default=50
  type: boolean
  inputBinding:
    prefix: -m
- id: int_minimal_microsatellite
  doc: <int>      minimal microsatellite size for distribution analysis, default=5
  type: boolean
  inputBinding:
    prefix: -s
- id: int_maximal_microsatellite
  doc: <int>      maximal microsatellite size for distribution analysis, default=40
  type: boolean
  inputBinding:
    prefix: -w
- id: int_span_size
  doc: <int>      span size around window for extracting reads, default=500
  type: boolean
  inputBinding:
    prefix: -u
- id: int_threads_number
  doc: <int>      threads number for parallel computing, default=1
  type: boolean
  inputBinding:
    prefix: -b
- id: int_output_homopolymer
  doc: '<int>      output homopolymer only, 0: no; 1: yes, default=0'
  type: boolean
  inputBinding:
    prefix: -x
- id: int_output_microsatellite
  doc: '<int>      output microsatellite only, 0: no; 1: yes, default=0'
  type: boolean
  inputBinding:
    prefix: -y
- id: int_output_site
  doc: '<int>      output site have no read coverage, 1: no; 0: yes, default=0'
  type: boolean
  inputBinding:
    prefix: '-0'
outputs: []
cwlVersion: v1.1
baseCommand:
- msisensor-pro
- pro
