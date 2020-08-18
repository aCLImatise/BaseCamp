class: CommandLineTool
id: ../../../msisensor_pro_baseline.cwl
inputs:
- id: string_homopolymer_file
  doc: <string>   homopolymer and microsatellite file
  type: boolean
  inputBinding:
    prefix: -d
- id: string_configure_files
  doc: <string>   configure files for building baseline (text file)  e.g. case1     /path/to/case1_sorted.bam
    case2     /path/to/case1_sorted.bam case2     /path/to/case1-sorted.bam
  type: boolean
  inputBinding:
    prefix: -i
- id: string_output_directory
  doc: <string>   output directory
  type: boolean
  inputBinding:
    prefix: -o
- id: int_coverage_threshold
  doc: '<int>      coverage threshold for msi analysis, WXS: 20; WGS: 15, default=1'
  type: boolean
  inputBinding:
    prefix: -c
- id: double_site_ratio
  doc: <double>   a site with a ratio of deteced in all samples less than this parameter
    will be removed in following analysis, default=0.5
  type: boolean
  inputBinding:
    prefix: -l
- id: int_minimal_homopolymer
  doc: <int>      minimal homopolymer size for pro analysis, default=10
  type: boolean
  inputBinding:
    prefix: -p
- id: int_maximal_homopolymer
  doc: <int>      maximal homopolymer size for pro analysis, default=50
  type: boolean
  inputBinding:
    prefix: -m
- id: int_span_size
  doc: <int>      span size around window for extracting reads, default=500
  type: boolean
  inputBinding:
    prefix: -u
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
- baseline
