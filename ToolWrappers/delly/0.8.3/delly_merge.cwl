class: CommandLineTool
id: delly_merge.cwl
inputs:
- id: in_arg_merged_sv
  doc: '[ --outfile ] arg (="sv.bcf")      Merged SV BCF output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_max_chunk
  doc: '[ --chunks ] arg (=500)            max. chunk size to merge groups of BCF'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_arg_min_coverage
  doc: '[ --coverage ] arg (=10)           min. coverage'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_min_sv
  doc: '[ --minsize ] arg (=0)             min. SV size'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_max_sv
  doc: '[ --maxsize ] arg (=1000000)       max. SV size'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_filter_sites_precise
  doc: '[ --precise ]                      Filter sites for PRECISE'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_filter_sites_pass
  doc: '[ --pass ]                         Filter sites for PASS'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_max_breakpoint
  doc: '[ --bp-offset ] arg (=1000)        max. breakpoint offset'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_reciprocal_overlap
  doc: "[ --rec-overlap ] arg (=0.800000012)\nmin. reciprocal overlap\n"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_files
  doc: -a [ --vaf ] arg (=0.150000006)       min. fractional ALT support
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_merged_sv
  doc: '[ --outfile ] arg (="sv.bcf")      Merged SV BCF output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_merged_sv)
hints: []
cwlVersion: v1.1
baseCommand:
- delly
- merge
