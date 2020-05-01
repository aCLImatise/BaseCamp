#!/usr/bin/env cwl-runner

baseCommand:
- cleanPolishes
class: CommandLineTool
cwlVersion: v1.0
id: cleanpolishes
inputs:
- doc: Introns bigger than this are candidates for trimming (default = 100000).
  id: threshold
  inputBinding:
    prefix: -threshold
  type: boolean
- doc: Don't print unmodified matches
  id: quiet
  inputBinding:
    prefix: -quiet
  type: boolean
- doc: Save (in separate files) the before/after of each modified match
  id: before_after
  inputBinding:
    prefix: -beforeafter
  type: boolean
- doc: Save (in separate files) the after of each modified match
  id: segregate
  inputBinding:
    prefix: -segregate
  type: boolean
- doc: Write output in GFF3 format
  id: gff3
  inputBinding:
    prefix: -gff3
  type: boolean
- doc: Also print the trimmed pieces (as separate matches)
  id: save_junk
  inputBinding:
    prefix: -savejunk
  type: boolean
