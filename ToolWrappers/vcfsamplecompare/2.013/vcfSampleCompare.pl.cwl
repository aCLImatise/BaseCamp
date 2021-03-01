class: CommandLineTool
id: vcfSampleCompare.pl.cwl
inputs:
- id: in_vcf_outfile_suffix
  doc: VCF outfile suffix (appended to -i).
  type: string?
  inputBinding:
    prefix: -o
- id: in_summary_suffix_appended
  doc: '[STDOUT] Summary outfile suffix (appended to -i).'
  type: string?
  inputBinding:
    prefix: -u
- id: in_group_sample_names
  doc: "...     [any^] A group of sample names for difference comparisons.\n^ See\
    \ --extended usage."
  type: string?
  inputBinding:
    prefix: -s
- id: in_int_minimum_number
  doc: "<int,...>...     [all*] Minimum number of samples to use in a group to\ndetermine\
    \ difference with its partner."
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_a
  doc: '[0.7] Minimum observation ratio difference [0-1].'
  type: double?
  inputBinding:
    prefix: -a
- id: in_no_g
  doc: Do not use genotype calls for sorting/filtering.
  type: boolean?
  inputBinding:
    prefix: --no-g
- id: in_no_f
  doc: Do not filter variant rows.
  type: boolean?
  inputBinding:
    prefix: --no-f
- id: in_no_w
  doc: Do not add samples to sample groups beyond the --min-
  type: boolean?
  inputBinding:
    prefix: --no-w
- id: in_adequate_read_depth
  doc: '[20] Adequate read depth (DP).'
  type: long?
  inputBinding:
    prefix: -x
- id: in_extended
  doc: '[<cnt>]  Print detailed usage.'
  type: boolean?
  inputBinding:
    prefix: --extended
- id: in_group_size_dot
  doc: -l <int>            [4] Minimum read depth (DP).
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcfSampleCompare.pl
