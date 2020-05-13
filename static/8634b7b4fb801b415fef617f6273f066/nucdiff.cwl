class: CommandLineTool
id: nucdiff.cwl
inputs:
- id: output_dir
  doc: '- Path to the directory where all intermediate and final results will be stored'
  type: string
  inputBinding:
    position: 0
- id: prefix
  doc: '- Name that will be added to all generated files including the ones created
    by NUCmer'
  type: string
  inputBinding:
    position: 1
- id: reloc_dist
  doc: '[int]    - Minimum distance between two relocated blocks [10000]'
  type: boolean
  inputBinding:
    prefix: --reloc_dist
- id: nuc_mer_opt
  doc: '[NUCMER_OPT] - NUCmer run options. By default, NUCmer will be run with its
    default parameters values, except the --maxmatch parameter. --maxmatch is hard
    coded and cannot be changed. To change any other parameter values, type parameter
    names and new values inside single or double quotation marks.'
  type: boolean
  inputBinding:
    prefix: --nucmer_opt
- id: filter_opt
  doc: '[FILTER_OPT] - Delta-filter run options. By default, it will be run with -q
    parameter only. -q is hard coded and cannot be changed. To add any other parameter
    values, type parameter names and their values inside single or double quotation
    marks.'
  type: boolean
  inputBinding:
    prefix: --filter_opt
- id: delta_file
  doc: '[DELTA_FILE] - Path to the already existing delta file (NUCmer output file)'
  type: boolean
  inputBinding:
    prefix: --delta_file
- id: proc
  doc: '[int]          - Number of processes to be used [1]'
  type: boolean
  inputBinding:
    prefix: --proc
- id: ref_name_full
  doc: "[{yes,no}] - Print full reference names in output files ('yes' value). In\
    \ case of 'no', everything after the first space will be ignored. ['no']"
  type: boolean
  inputBinding:
    prefix: --ref_name_full
- id: query_name_full
  doc: "[{yes,no}] - Print full query names in output files ('yes' value). In case\
    \ of 'no', everything after the first space will be ignored.['no']"
  type: boolean
  inputBinding:
    prefix: --query_name_full
- id: vcf
  doc: '[{yes,no}]      - Output small and medium local differences in the VCF format'
  type: boolean
  inputBinding:
    prefix: --vcf
outputs: []
cwlVersion: v1.1
baseCommand:
- nucdiff
