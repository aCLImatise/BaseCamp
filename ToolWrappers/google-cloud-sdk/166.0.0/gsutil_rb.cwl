class: CommandLineTool
id: gsutil_rb.cwl
inputs:
- id: in_continues_silently_printing
  doc: "Continues silently (without printing error messages) despite\nerrors when\
    \ removing buckets. If some buckets couldn't be removed,\ngsutil's exit status\
    \ will be non-zero even if this flag is set.\n"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_the_mdot
  doc: Be certain you want to delete a bucket before you do so, as once it is
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
- rb
