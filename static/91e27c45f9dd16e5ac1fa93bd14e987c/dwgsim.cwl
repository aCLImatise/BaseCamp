class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dwgsim.cwl
inputs:
- id: basecolorflow_error_first
  doc: per base/color/flow error rate of the first read [from 0.020 to 0.020 by 0.000]
  type: double
  inputBinding:
    prefix: -e
- id: basecolorflow_error_second
  doc: per base/color/flow error rate of the second read [from 0.020 to 0.020 by 0.000]
  type: double
  inputBinding:
    prefix: -E
- id: use_inner_distance
  doc: use the inner distance instead of the outer distance for pairs [False]
  type: boolean
  inputBinding:
    prefix: -i
- id: outer_distance_two
  doc: outer distance between the two ends for pairs [500]
  type: long
  inputBinding:
    prefix: -d
- id: standard_deviation_distance
  doc: standard deviation of the distance for pairs [50.000]
  type: long
  inputBinding:
    prefix: -s
- id: number_read_disable
  doc: number of read pairs (-1 to disable) [-1]
  type: long
  inputBinding:
    prefix: -N
- id: mean_coverage_disable
  doc: mean coverage across available positions (-1 to disable) [100.00]
  type: double
  inputBinding:
    prefix: -C
- id: length_first_read
  doc: length of the first read [70]
  type: long
  inputBinding:
    prefix: '-1'
- id: length_second_read
  doc: length of the second read [70]
  type: long
  inputBinding:
    prefix: '-2'
- id: rate_of_mutations
  doc: rate of mutations [0.0010]
  type: double
  inputBinding:
    prefix: -r
- id: frequency_simulate_mutations
  doc: 'frequency of given mutation to simulate low fequency somatic mutations [0.5000]
    NB: freqeuncy F refers to the first strand of mutation, therefore mutations  on
    the second strand occour with a frequency of 1-F '
  type: double
  inputBinding:
    prefix: -F
- id: fraction_mutations_indels
  doc: fraction of mutations that are indels [0.10]
  type: double
  inputBinding:
    prefix: -R
- id: probability_indel_extended
  doc: probability an indel is extended [0.30]
  type: double
  inputBinding:
    prefix: -X
- id: minimum_length_indel
  doc: the minimum length indel [1]
  type: long
  inputBinding:
    prefix: -I
- id: probability_random_dna
  doc: probability of a random DNA read [0.05]
  type: double
  inputBinding:
    prefix: -y
- id: maximum_number_ns
  doc: maximum number of Ns allowed in a given read [0]
  type: long
  inputBinding:
    prefix: -n
- id: generate_reads_illumina
  doc: 'generate reads for [0]: 0: Illumina 1: SOLiD 2: Ion Torrent'
  type: long
  inputBinding:
    prefix: -c
- id: generate_reads_default
  doc: 'generate reads [0]: 0: default (opposite strand for Illumina, same strand
    for SOLiD/Ion Torrent) 1: same strand (mate pair) 2: opposite strand (paired end)'
  type: long
  inputBinding:
    prefix: -S
- id: flow_order_ion
  doc: the flow order for Ion Torrent data [(null)]
  type: string
  inputBinding:
    prefix: -f
- id: use_perbase_rate
  doc: use a per-base error rate for Ion Torrent data [False]
  type: boolean
  inputBinding:
    prefix: -B
- id: haploid_mode
  doc: haploid mode [False]
  type: boolean
  inputBinding:
    prefix: -H
- id: random_seed_uses
  doc: random seed (-1 uses the current time) [-1]
  type: long
  inputBinding:
    prefix: -z
- id: generate_mutations_file
  doc: generate a mutations file only [False]
  type: boolean
  inputBinding:
    prefix: -M
- id: mutations_txt_file
  doc: the mutations txt file to re-create [not using]
  type: File
  inputBinding:
    prefix: -m
- id: bedlike_file_set
  doc: the bed-like file set of candidate mutations [(null)]
  type: File
  inputBinding:
    prefix: -b
- id: vcf_file_set
  doc: the vcf file set of candidate mutations (use pl tag for strand) [(null)]
  type: File
  inputBinding:
    prefix: -v
- id: bed_regions_cover
  doc: the bed of regions to cover [not using]
  type: File
  inputBinding:
    prefix: -x
- id: read_prefix_prepend
  doc: a read prefix to prepend to each read name [not using]
  type: string
  inputBinding:
    prefix: -P
- id: fixed_base_quality
  doc: a fixed base quality to apply (single character) [not using]
  type: string
  inputBinding:
    prefix: -q
- id: standard_deviation_base
  doc: standard deviation of the base quality scores [2.00]
  type: double
  inputBinding:
    prefix: -Q
- id: in_dot_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dwgsim
