class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/snntest.cwl
inputs:
- id: data_format_used
  doc: ": data are in the format used for Hudson's (2001) programs"
  type: File
  inputBinding:
    prefix: -s
- id: read_mslike_data
  doc: ': read ms-like data from stdin'
  type: boolean
  inputBinding:
    prefix: -m
- id: number_pops_followed
  doc: ': the number of pops followed by list of sample sizes per pop'
  type: string[]
  inputBinding:
    prefix: -c
- id: write_data_outfilename
  doc: ': write data to outfilename (defaults to writing to the screen)'
  type: string
  inputBinding:
    prefix: -o
- id: get_pvalues_nperms
  doc: ': get p-values from nperms permutations of the data (default=10000)'
  type: string
  inputBinding:
    prefix: -n
- id: only_analyze_biallelic
  doc: ': only analyze bi-allelic sites (only considers the ingroup!)'
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- snntest
