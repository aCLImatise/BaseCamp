#!/usr/bin/env cwl-runner

baseCommand:
- process_old_merged_nodup.sh
class: CommandLineTool
cwlVersion: v1.0
id: process_old_merged_nodup.sh
inputs:
- doc: print only the header lines
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: print only the number of bgzf blocks for existing chromosome (pairs)
  id: b
  inputBinding:
    prefix: -B
  type: boolean
- doc: print only the region split character
  id: w
  inputBinding:
    prefix: -W
  type: boolean
- doc: Only check if the file is a triangle (i.e. a chromosome pair occurs only in
    one direction (e.g. if chr1|chr2 exists, chr2|chr1 doesn't))
  id: y
  inputBinding:
    prefix: -Y
  type: boolean
- doc: list chromosome names
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: print only the total line count (same as gunzip -c | wc -l but much faster)
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: force to overwrite the index
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: autoflip query when the matching chromosome pair doesn't exist
  id: a
  inputBinding:
    prefix: -a
  type: boolean
