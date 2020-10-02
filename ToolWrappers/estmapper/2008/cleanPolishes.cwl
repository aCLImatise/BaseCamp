class: CommandLineTool
id: cleanPolishes.cwl
inputs:
- id: in_threshold
  doc: Introns bigger than this are candidates for trimming (default = 100000).
  type: boolean
  inputBinding:
    prefix: -threshold
- id: in_quiet
  doc: Don't print unmodified matches
  type: boolean
  inputBinding:
    prefix: -quiet
- id: in_before_after
  doc: Save (in separate files) the before/after of each modified match
  type: boolean
  inputBinding:
    prefix: -beforeafter
- id: in_segregate
  doc: Save (in separate files) the after of each modified match
  type: boolean
  inputBinding:
    prefix: -segregate
- id: in_gff_three
  doc: Write output in GFF3 format
  type: boolean
  inputBinding:
    prefix: -gff3
- id: in_save_junk
  doc: Also print the trimmed pieces (as separate matches)
  type: boolean
  inputBinding:
    prefix: -savejunk
- id: in_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: -debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cleanPolishes
