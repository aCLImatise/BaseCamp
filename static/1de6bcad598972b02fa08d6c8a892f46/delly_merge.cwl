class: CommandLineTool
id: ../../../delly_merge.cwl
inputs:
- id: arg_merged_sv
  doc: '[ --outfile ] arg (="sv.bcf")      Merged SV BCF output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_chunk_size
  doc: '[ --chunks ] arg (=500)            max. chunk size to merge groups of BCF  files'
  type: boolean
  inputBinding:
    prefix: -u
- id: arg_min_fractional
  doc: '[ --vaf ] arg (=0.150000006)       min. fractional ALT support'
  type: boolean
  inputBinding:
    prefix: -a
- id: arg_min_coverage
  doc: '[ --coverage ] arg (=10)           min. coverage'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_min_sv
  doc: '[ --minsize ] arg (=0)             min. SV size'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_max_sv
  doc: '[ --maxsize ] arg (=1000000)       max. SV size'
  type: boolean
  inputBinding:
    prefix: -n
- id: filter_sites_precise
  doc: '[ --precise ]                      Filter sites for PRECISE'
  type: boolean
  inputBinding:
    prefix: -c
- id: filter_sites_pass
  doc: '[ --pass ]                         Filter sites for PASS'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_max_breakpoint
  doc: '[ --bp-offset ] arg (=1000)        max. breakpoint offset'
  type: boolean
  inputBinding:
    prefix: -b
- id: arg_min_reciprocal
  doc: '[ --rec-overlap ] arg (=0.800000012) min. reciprocal overlap'
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- delly
- merge
