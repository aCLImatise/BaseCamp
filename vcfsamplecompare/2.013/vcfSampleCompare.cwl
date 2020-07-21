class: CommandLineTool
id: ../../../vcfSampleCompare.pl.cwl
inputs:
- id: vcf_outfile_suffix
  doc: VCF outfile suffix (appended to -i).
  type: string
  inputBinding:
    prefix: -o
- id: summary_outfile_suffix
  doc: '[STDOUT] Summary outfile suffix (appended to -i).'
  type: string
  inputBinding:
    prefix: -u
- id: group_sample_names
  doc: '...     [any^] A group of sample names for difference comparisons. ^ See --extended
    usage.'
  type: string
  inputBinding:
    prefix: -s
- id: minimum_number_use
  doc: <int,...>...     [all*] Minimum number of samples to use in a group to determine
    difference with its partner.
  type: boolean
  inputBinding:
    prefix: -d
- id: a
  doc: '[0.7] Minimum observation ratio difference [0-1].'
  type: string
  inputBinding:
    prefix: -a
- id: no_g
  doc: Do not use genotype calls for sorting/filtering.
  type: boolean
  inputBinding:
    prefix: --no-g
- id: no_f
  doc: Do not filter variant rows.
  type: boolean
  inputBinding:
    prefix: --no-f
- id: no_w
  doc: Do not add samples to sample groups beyond the --min- group-size.
  type: boolean
  inputBinding:
    prefix: --no-w
- id: minimum_read_dp
  doc: '[4] Minimum read depth (DP).'
  type: long
  inputBinding:
    prefix: -l
- id: adequate_read_dp
  doc: '[20] Adequate read depth (DP).'
  type: long
  inputBinding:
    prefix: -x
- id: extended
  doc: '[<cnt>]  Print detailed usage.'
  type: boolean
  inputBinding:
    prefix: --extended
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfSampleCompare.pl
