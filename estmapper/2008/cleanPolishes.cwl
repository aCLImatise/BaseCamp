class: CommandLineTool
id: cleanPolishes.cwl
inputs:
- id: threshold
  doc: Introns bigger than this are candidates for trimming (default = 100000).
  type: boolean
  inputBinding:
    prefix: -threshold
- id: quiet
  doc: Don't print unmodified matches
  type: boolean
  inputBinding:
    prefix: -quiet
- id: before_after
  doc: Save (in separate files) the before/after of each modified match
  type: boolean
  inputBinding:
    prefix: -beforeafter
- id: segregate
  doc: Save (in separate files) the after of each modified match
  type: boolean
  inputBinding:
    prefix: -segregate
- id: gff3
  doc: Write output in GFF3 format
  type: boolean
  inputBinding:
    prefix: -gff3
- id: save_junk
  doc: Also print the trimmed pieces (as separate matches)
  type: boolean
  inputBinding:
    prefix: -savejunk
outputs: []
cwlVersion: v1.1
baseCommand:
- cleanPolishes
