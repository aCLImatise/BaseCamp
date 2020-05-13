class: CommandLineTool
id: delly_merge.cwl
inputs:
- id: o
  doc: '[ --outfile ] arg (="sv.bcf")      Merged SV BCF output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: u
  doc: '[ --chunks ] arg (=500)            max. chunk size to merge groups of BCF  files'
  type: boolean
  inputBinding:
    prefix: -u
- id: a
  doc: '[ --vaf ] arg (=0.150000006)       min. fractional ALT support'
  type: boolean
  inputBinding:
    prefix: -a
- id: v
  doc: '[ --coverage ] arg (=10)           min. coverage'
  type: boolean
  inputBinding:
    prefix: -v
- id: m
  doc: '[ --minsize ] arg (=0)             min. SV size'
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: '[ --maxsize ] arg (=1000000)       max. SV size'
  type: boolean
  inputBinding:
    prefix: -n
- id: c
  doc: '[ --precise ]                      Filter sites for PRECISE'
  type: boolean
  inputBinding:
    prefix: -c
- id: p
  doc: '[ --pass ]                         Filter sites for PASS'
  type: boolean
  inputBinding:
    prefix: -p
- id: b
  doc: '[ --bp-offset ] arg (=1000)        max. breakpoint offset'
  type: boolean
  inputBinding:
    prefix: -b
- id: r
  doc: '[ --rec-overlap ] arg (=0.800000012) min. reciprocal overlap'
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- delly
- merge
