class: CommandLineTool
id: bcftools_merge.cwl
inputs:
- id: force_samples
  doc: resolve duplicate sample names
  type: boolean
  inputBinding:
    prefix: --force-samples
- id: print_header
  doc: print only the merged header and exit
  type: boolean
  inputBinding:
    prefix: --print-header
- id: use_header
  doc: use the provided header
  type: File
  inputBinding:
    prefix: --use-header
- id: apply_filters
  doc: require at least one of the listed FILTER strings (e.g. "PASS,.")
  type: string
  inputBinding:
    prefix: --apply-filters
- id: filter_logic
  doc: <x|+>           remove filters if some input is PASS ("x"), or apply all filters
    ("+") [+]
  type: boolean
  inputBinding:
    prefix: --filter-logic
- id: gvc_f
  doc: <-|ref.fa>              merge gVCF blocks, INFO/END tag is expected. Implies
    -i QS:sum,MinDP:min,I16:sum,IDV:max,IMF:max
  type: boolean
  inputBinding:
    prefix: --gvcf
- id: info_rules
  doc: <tag:method,..>   rules for merging INFO fields (method is one of sum,avg,min,max,join)
    or "-" to turn off the default [DP:sum,DP4:sum]
  type: boolean
  inputBinding:
    prefix: --info-rules
- id: file_list
  doc: read file names from the file
  type: File
  inputBinding:
    prefix: --file-list
- id: merge
  doc: allow multiallelic records for <snps|indels|both|all|none|id>, see man page
    for details [both]
  type: string
  inputBinding:
    prefix: --merge
- id: no_version
  doc: do not append version and command line to the header
  type: boolean
  inputBinding:
    prefix: --no-version
- id: output
  doc: write output to a file [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: output_type
  doc: <b|u|z|v>        'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed VCF;
    'v' uncompressed VCF [v]
  type: boolean
  inputBinding:
    prefix: --output-type
- id: regions
  doc: restrict to comma-separated list of regions
  type: string
  inputBinding:
    prefix: --regions
- id: regions_file
  doc: restrict to regions listed in a file
  type: File
  inputBinding:
    prefix: --regions-file
- id: threads
  doc: use multithreading with <int> worker threads [0]
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- merge
