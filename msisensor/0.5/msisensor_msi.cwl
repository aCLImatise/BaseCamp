class: CommandLineTool
id: ../../../msisensor_msi.cwl
inputs:
- id: in_string_homopolymer_file
  doc: <string>   homopolymer and microsates file
  type: boolean
  inputBinding:
    prefix: -d
- id: in_string_normal_file
  doc: <string>   normal bam file
  type: boolean
  inputBinding:
    prefix: -n
- id: in_string_tumor_bam
  doc: <string>   tumor  bam file
  type: boolean
  inputBinding:
    prefix: -t
- id: in_string_distribution_file
  doc: <string>   output distribution file
  type: File
  inputBinding:
    prefix: -o
- id: in_string_file_optional
  doc: <string>   bed file, optional
  type: boolean
  inputBinding:
    prefix: -e
- id: in_double_fdr_threshold
  doc: <double>   FDR threshold for somatic sites detection, default=0.05
  type: boolean
  inputBinding:
    prefix: -f
- id: in_double_minimal_comentropy
  doc: <double>   minimal comentropy threshold for somatic sites detection (just for
    tumor only data), default=1
  type: boolean
  inputBinding:
    prefix: -i
- id: in_int_coverage_threshold
  doc: '<int>      coverage threshold for msi analysis, WXS: 20; WGS: 15, default=20'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_string_choose_format
  doc: '<string>   choose one region, format: 1:10000000-20000000'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_int_minimal_homopolymer_size_default
  doc: <int>      minimal homopolymer size, default=5
  type: boolean
  inputBinding:
    prefix: -l
- id: in_int_minimal_homopolymer_size_distribution
  doc: <int>      minimal homopolymer size for distribution analysis, default=10
  type: boolean
  inputBinding:
    prefix: -p
- id: in_int_maximal_homopolymer
  doc: <int>      maximal homopolymer size for distribution analysis, default=50
  type: boolean
  inputBinding:
    prefix: -m
- id: in_int_minimal_microsates_size_default
  doc: <int>      minimal microsates size, default=3
  type: boolean
  inputBinding:
    prefix: -q
- id: in_int_minimal_microsates_size_distribution
  doc: <int>      minimal microsates size for distribution analysis, default=5
  type: boolean
  inputBinding:
    prefix: -s
- id: in_int_maximal_microstaes
  doc: <int>      maximal microstaes size for distribution analysis, default=40
  type: boolean
  inputBinding:
    prefix: -w
- id: in_int_span_size
  doc: <int>      span size around window for extracting reads, default=500
  type: boolean
  inputBinding:
    prefix: -u
- id: in_int_threads_number
  doc: <int>      threads number for parallel computing, default=1
  type: boolean
  inputBinding:
    prefix: -b
- id: in_int_output_homopolymer
  doc: '<int>      output homopolymer only, 0: no; 1: yes, default=0'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_int_output_microsatellite
  doc: '<int>      output microsatellite only, 0: no; 1: yes, default=0'
  type: boolean
  inputBinding:
    prefix: -y
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_string_distribution_file
  doc: <string>   output distribution file
  type: File
  outputBinding:
    glob: $(inputs.in_string_distribution_file)
cwlVersion: v1.1
baseCommand:
- msisensor
- msi
