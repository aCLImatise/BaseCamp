class: CommandLineTool
id: dazcon.cwl
inputs:
- id: in__verboseturns_verbose
  doc: ",  --verbose\nTurns on verbose logging"
  type: boolean
  inputBinding:
    prefix: -v
- id: in__onlyproperoverlapsuse_only
  doc: ",  --only-proper-overlaps\nUse only 'proper overlaps', i.e., align to the\
    \ ends"
  type: boolean
  inputBinding:
    prefix: -o
- id: in__coveragesortsort_hits
  doc: ",  --coverage-sort\nSort hits by coverage"
  type: boolean
  inputBinding:
    prefix: -x
- id: in__maxhit_uintmaximum
  doc: ",  --max-hit <uint>\nMaximum number of hits to pass to consensus"
  type: long
  inputBinding:
    prefix: -m
- id: in__stringrequired_path
  doc: ",  --seq-file <string>\n(required)  Path to the sequences file"
  type: File
  inputBinding:
    prefix: -s
- id: in__alignfile_stringrequired
  doc: ",  --align-file <string>\n(required)  Path to the alignments file"
  type: File
  inputBinding:
    prefix: -a
- id: in__trim_uinttrim
  doc: ",  --trim <uint>\nTrim alignments on either size"
  type: long
  inputBinding:
    prefix: -t
- id: in__minlen_uintminimum
  doc: ",  --min-len <uint>\nMinimum length for correction"
  type: long
  inputBinding:
    prefix: -l
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
- dazcon
