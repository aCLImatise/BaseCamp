class: CommandLineTool
id: ../../../breakdancer_max.cwl
inputs:
- id: operate_single_chromosome
  doc: operate on a single chromosome [all chromosome]
  type: string
  inputBinding:
    prefix: -o
- id: minimum_length_region
  doc: minimum length of a region [7]
  type: long
  inputBinding:
    prefix: -s
- id: cutoff_unit_standard
  doc: cutoff in unit of standard deviation [3]
  type: long
  inputBinding:
    prefix: -c
- id: maximum_sv_size
  doc: maximum SV size [1000000000]
  type: long
  inputBinding:
    prefix: -m
- id: minimum_alternative_mapping
  doc: minimum alternative mapping quality [35]
  type: long
  inputBinding:
    prefix: -q
- id: minimum_number_required
  doc: minimum number of read pairs required to establish a connection [2]
  type: long
  inputBinding:
    prefix: -r
- id: maximum_threshold_ignored
  doc: maximum threshold of haploid sequence coverage for regions to be ignored [1000]
  type: long
  inputBinding:
    prefix: -x
- id: buffer_size_building
  doc: buffer size for building connection [100]
  type: long
  inputBinding:
    prefix: -b
- id: only_detect_rearrangement
  doc: only detect transchromosomal rearrangement, by default off
  type: boolean
  inputBinding:
    prefix: -t
- id: prefix_reads_saved
  doc: prefix of fastq files that SV supporting reads will be saved by library
  type: string
  inputBinding:
    prefix: -d
- id: dump_svs_supporting
  doc: dump SVs and supporting reads in BED format for GBrowse
  type: string
  inputBinding:
    prefix: -g
- id: analyze_insert_library
  doc: analyze Illumina long insert (mate-pair) library
  type: boolean
  inputBinding:
    prefix: -l
- id: print_copy_number
  doc: print out copy number and support reads per library rather than per bam, by
    default off
  type: boolean
  inputBinding:
    prefix: -a
- id: output_score_filter
  doc: output score filter [30]
  type: long
  inputBinding:
    prefix: -y
- id: analysis_dot_config
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- breakdancer-max
