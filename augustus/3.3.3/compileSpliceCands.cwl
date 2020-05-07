class: CommandLineTool
id: compileSpliceCands.cwl
inputs:
- id: f
  doc: <filename>      The potential splice sites in gff format
  type: boolean
  inputBinding:
    prefix: -f
- id: g
  doc: <filename>      The genome file in fasta format)
  type: boolean
  inputBinding:
    prefix: -g
- id: c
  doc: <integer>       Defines the number of potential splice site every potential
    splice site itself is compared with
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: <float>         has to be between 0 and 1 and  defines how much the average
    coverage may differ
  type: boolean
  inputBinding:
    prefix: -t
- id: m
  doc: <integer>       defines how many bases arround the splice site should be checked.
  type: boolean
  inputBinding:
    prefix: -m
- id: d
  doc: <no argument>   enables debugging output
  type: boolean
  inputBinding:
    prefix: -d
- id: i
  doc: <integer>       The maximum length an Intron can be. Default 500000(human genome).
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- compileSpliceCands
