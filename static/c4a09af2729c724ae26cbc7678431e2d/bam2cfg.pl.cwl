class: CommandLineTool
id: ../../../bam2cfg.pl.cwl
inputs:
- id: in_minimum_mapping_quality
  doc: Minimum mapping quality [35]
  type: long
  inputBinding:
    prefix: -q
- id: in_using_mapping_quality
  doc: Using mapping quality instead of alternative mapping quality
  type: boolean
  inputBinding:
    prefix: -m
- id: in_minimal_mean_size
  doc: Minimal mean insert size [50]
  type: boolean
  inputBinding:
    prefix: -s
- id: in_change_default_system
  doc: Change default system from Illumina to SOLiD
  type: boolean
  inputBinding:
    prefix: -C
- id: in_cutoff_unit_standard
  doc: Cutoff in unit of standard deviation [4]
  type: double
  inputBinding:
    prefix: -c
- id: in_number_required_estimate
  doc: Number of observation required to estimate mean and s.d. insert size [10000]
  type: long
  inputBinding:
    prefix: -n
- id: in_cutoff_coefficients_variation
  doc: Cutoff on coefficients of variation [1]
  type: double
  inputBinding:
    prefix: -v
- id: in_two_column_text
  doc: A two column tab-delimited text file (RG, LIB) specify the RG=>LIB mapping,
    useful when BAM header is incomplete
  type: File
  inputBinding:
    prefix: -f
- id: in_number_bins_histogram
  doc: Number of bins in the histogram [50]
  type: long
  inputBinding:
    prefix: -b
- id: in_output_mapping_flag
  doc: Output mapping flag distribution
  type: boolean
  inputBinding:
    prefix: -g
- id: in_more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam2cfg.pl
