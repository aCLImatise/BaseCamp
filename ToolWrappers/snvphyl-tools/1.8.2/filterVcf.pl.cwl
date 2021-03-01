class: CommandLineTool
id: filterVcf.pl.cwl
inputs:
- id: in_no_indels
  doc: remove indels
  type: string?
  inputBinding:
    prefix: --noindels
- id: in_remove_variants_lower
  doc: to remove variants with this depth and lower
  type: string?
  inputBinding:
    prefix: -d
- id: in_file_remember_where
  doc: "a file to remember where positions with low quality variations are held\n\
    at /usr/local/bin/filterVcf.pl line 18.\n"
  type: File?
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filterVcf.pl
