class: CommandLineTool
id: ../../../bam2cfg.pl.cwl
inputs:
- id: minimum_mapping_quality
  doc: Minimum mapping quality [35]
  type: long
  inputBinding:
    prefix: -q
- id: using_mapping_quality
  doc: Using mapping quality instead of alternative mapping quality
  type: boolean
  inputBinding:
    prefix: -m
- id: minimal_mean_insert
  doc: Minimal mean insert size [50]
  type: boolean
  inputBinding:
    prefix: -s
- id: change_default_system
  doc: Change default system from Illumina to SOLiD
  type: boolean
  inputBinding:
    prefix: -C
- id: cutoff_unit_standard
  doc: Cutoff in unit of standard deviation [4]
  type: double
  inputBinding:
    prefix: -c
- id: number_required_estimate
  doc: Number of observation required to estimate mean and s.d. insert size [10000]
  type: long
  inputBinding:
    prefix: -n
- id: cutoff_coefficients_variation
  doc: Cutoff on coefficients of variation [1]
  type: double
  inputBinding:
    prefix: -v
- id: two_column_lib
  doc: A two column tab-delimited text file (RG, LIB) specify the RG=>LIB mapping,
    useful when BAM header is incomplete
  type: string
  inputBinding:
    prefix: -f
- id: number_bins_histogram
  doc: 'Number of bins in the histogram [50] '
  type: long
  inputBinding:
    prefix: -b
- id: output_mapping_distribution
  doc: Output mapping flag distribution
  type: boolean
  inputBinding:
    prefix: -g
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2cfg.pl
