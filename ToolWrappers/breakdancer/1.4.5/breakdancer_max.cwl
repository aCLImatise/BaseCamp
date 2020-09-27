class: CommandLineTool
id: breakdancer_max.cwl
inputs:
- id: in_operate_single_chromosome
  doc: operate on a single chromosome [all chromosome]
  type: string
  inputBinding:
    prefix: -o
- id: in_minimum_length_region
  doc: minimum length of a region [7]
  type: long
  inputBinding:
    prefix: -s
- id: in_cutoff_unit_standard
  doc: cutoff in unit of standard deviation [3]
  type: long
  inputBinding:
    prefix: -c
- id: in_maximum_sv_size
  doc: maximum SV size [1000000000]
  type: long
  inputBinding:
    prefix: -m
- id: in_minimum_alternative_mapping
  doc: minimum alternative mapping quality [35]
  type: long
  inputBinding:
    prefix: -q
- id: in_minimum_number_read
  doc: minimum number of read pairs required to establish a connection [2]
  type: long
  inputBinding:
    prefix: -r
- id: in_maximum_threshold_haploid
  doc: maximum threshold of haploid sequence coverage for regions to be ignored [1000]
  type: long
  inputBinding:
    prefix: -x
- id: in_buffer_size_building
  doc: buffer size for building connection [100]
  type: long
  inputBinding:
    prefix: -b
- id: in_only_detect_rearrangement
  doc: only detect transchromosomal rearrangement, by default off
  type: boolean
  inputBinding:
    prefix: -t
- id: in_prefix_reads_saved
  doc: prefix of fastq files that SV supporting reads will be saved by library
  type: string
  inputBinding:
    prefix: -d
- id: in_dump_svs_supporting
  doc: dump SVs and supporting reads in BED format for GBrowse
  type: string
  inputBinding:
    prefix: -g
- id: in_analyze_illumina_long
  doc: analyze Illumina long insert (mate-pair) library
  type: boolean
  inputBinding:
    prefix: -l
- id: in_print_number_reads
  doc: print out copy number and support reads per library rather than per bam, by
    default off
  type: boolean
  inputBinding:
    prefix: -a
- id: in_output_score_filter
  doc: output score filter [30]
  type: long
  inputBinding:
    prefix: -y
- id: in_analysis_dot_config
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- breakdancer-max
