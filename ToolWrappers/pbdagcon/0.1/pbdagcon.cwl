class: CommandLineTool
id: pbdagcon.cwl
inputs:
- id: in__verboseturns_verbose
  doc: ",  --verbose\nTurns on verbose logging"
  type: boolean
  inputBinding:
    prefix: -v
- id: in__alignalign_sequences
  doc: ",  --align\nAlign sequences before adding to consensus"
  type: boolean
  inputBinding:
    prefix: -a
- id: in__trim_uinttrim
  doc: ",  --trim <uint>\nTrim alignments on either size"
  type: long
  inputBinding:
    prefix: -t
- id: in__minlength_uintminimum
  doc: ",  --min-length <uint>\nMinimum length for correction"
  type: long
  inputBinding:
    prefix: -m
- id: in__mincoverage_uintminimum
  doc: ",  --min-coverage <uint>\nMinimum coverage for correction"
  type: long
  inputBinding:
    prefix: -c
- id: in__threads_intnumber
  doc: ",  --threads <int>\nNumber of consensus threads"
  type: long
  inputBinding:
    prefix: -j
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pbdagcon
