class: CommandLineTool
id: ../../../msisensor_msi.cwl
inputs:
- id: string_homopolymer_microsates
  doc: <string>   homopolymer and microsates file
  type: boolean
  inputBinding:
    prefix: -d
- id: string_normal_file
  doc: <string>   normal bam file
  type: boolean
  inputBinding:
    prefix: -n
- id: string_tumor_file
  doc: <string>   tumor  bam file
  type: boolean
  inputBinding:
    prefix: -t
- id: string_distribution_file
  doc: <string>   output distribution file
  type: boolean
  inputBinding:
    prefix: -o
- id: string_bed_file
  doc: <string>   bed file, optional
  type: boolean
  inputBinding:
    prefix: -e
- id: double_fdr_threshold
  doc: <double>   FDR threshold for somatic sites detection, default=0.05
  type: boolean
  inputBinding:
    prefix: -f
- id: double_minimal_comentropy
  doc: <double>   minimal comentropy threshold for somatic sites detection (just for
    tumor only data), default=1
  type: boolean
  inputBinding:
    prefix: -i
- id: int_coverage_threshold
  doc: '<int>      coverage threshold for msi analysis, WXS: 20; WGS: 15, default=20'
  type: boolean
  inputBinding:
    prefix: -c
- id: string_choose_format
  doc: '<string>   choose one region, format: 1:10000000-20000000'
  type: boolean
  inputBinding:
    prefix: -r
- id: int_minimal_homopolymer_size_default
  doc: <int>      minimal homopolymer size, default=5
  type: boolean
  inputBinding:
    prefix: -l
- id: int_minimal_homopolymer_size_distribution
  doc: <int>      minimal homopolymer size for distribution analysis, default=10
  type: boolean
  inputBinding:
    prefix: -p
- id: int_maximal_homopolymer
  doc: <int>      maximal homopolymer size for distribution analysis, default=50
  type: boolean
  inputBinding:
    prefix: -m
- id: int_minimal_microsates_size_default
  doc: <int>      minimal microsates size, default=3
  type: boolean
  inputBinding:
    prefix: -q
- id: int_minimal_microsates_size_distribution
  doc: <int>      minimal microsates size for distribution analysis, default=5
  type: boolean
  inputBinding:
    prefix: -s
- id: int_maximal_microstaes
  doc: <int>      maximal microstaes size for distribution analysis, default=40
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
outputs: []
cwlVersion: v1.1
baseCommand:
- msisensor
- msi
