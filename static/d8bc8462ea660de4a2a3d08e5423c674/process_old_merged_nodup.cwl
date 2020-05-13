class: CommandLineTool
id: process_old_merged_nodup.sh.cwl
inputs:
- id: h
  doc: print only the header lines
  type: boolean
  inputBinding:
    prefix: -H
- id: b
  doc: print only the number of bgzf blocks for existing chromosome (pairs)
  type: boolean
  inputBinding:
    prefix: -B
- id: w
  doc: print only the region split character
  type: boolean
  inputBinding:
    prefix: -W
- id: y
  doc: Only check if the file is a triangle (i.e. a chromosome pair occurs only in
    one direction (e.g. if chr1|chr2 exists, chr2|chr1 doesn't))
  type: boolean
  inputBinding:
    prefix: -Y
- id: l
  doc: list chromosome names
  type: boolean
  inputBinding:
    prefix: -l
- id: n
  doc: print only the total line count (same as gunzip -c | wc -l but much faster)
  type: boolean
  inputBinding:
    prefix: -n
- id: f
  doc: force to overwrite the index
  type: boolean
  inputBinding:
    prefix: -f
- id: a
  doc: autoflip query when the matching chromosome pair doesn't exist
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- process_old_merged_nodup.sh
