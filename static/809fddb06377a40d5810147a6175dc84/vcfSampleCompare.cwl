class: CommandLineTool
id: vcfSampleCompare.pl.cwl
inputs:
- id: o
  doc: VCF outfile suffix (appended to -i).
  type: string
  inputBinding:
    prefix: -o
- id: u
  doc: '[STDOUT] Summary outfile suffix (appended to -i).'
  type: string
  inputBinding:
    prefix: -u
- id: s
  doc: '...     [any^] A group of sample names for difference comparisons. ^ See --extended
    usage.'
  type: string
  inputBinding:
    prefix: -s
- id: d
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
- id: l
  doc: '[4] Minimum read depth (DP).'
  type: long
  inputBinding:
    prefix: -l
- id: x
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
