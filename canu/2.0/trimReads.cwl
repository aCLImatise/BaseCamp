class: CommandLineTool
id: trimReads.cwl
inputs:
- id: s
  doc: path to read store
  type: string
  inputBinding:
    prefix: -S
- id: o
  doc: path to overlap store
  type: string
  inputBinding:
    prefix: -O
- id: o
  doc: output prefix, for logging
  type: string
  inputBinding:
    prefix: -o
- id: t
  doc: limit processing to only reads from bgn to end (inclusive)
  type: string
  inputBinding:
    prefix: -t
- id: ci
  doc: path to input clear ranges (NOT SUPPORTED)
  type: string
  inputBinding:
    prefix: -Ci
- id: co
  doc: path to ouput clear ranges
  type: string
  inputBinding:
    prefix: -Co
- id: e
  doc: ignore overlaps with more than 'erate' percent error
  type: string
  inputBinding:
    prefix: -e
- id: ol
  doc: the minimum evidence overlap length
  type: string
  inputBinding:
    prefix: -ol
- id: oc
  doc: the minimum evidence overlap coverage evidence overlaps must overlap by 'l'
    bases to be joined, and must be at least 'c' deep to be retained
  type: string
  inputBinding:
    prefix: -oc
- id: minlength
  doc: reads trimmed below this many bases are deleted
  type: string
  inputBinding:
    prefix: -minlength
outputs: []
cwlVersion: v1.1
baseCommand:
- trimReads
