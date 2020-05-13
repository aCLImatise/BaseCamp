class: CommandLineTool
id: phyluce_utilities_replace_many_links.cwl
inputs:
- id: in_dir
  doc: The directory containing the links to rename
  type: string
  inputBinding:
    prefix: --indir
- id: oldpath
  doc: The text you want to replace in the oldpath (include '/')
  type: string
  inputBinding:
    prefix: --oldpath
- id: newpath
  doc: The text you want to use as a replacement in the newpath (include '/')
  type: string
  inputBinding:
    prefix: --newpath
- id: outdir
  doc: The output directory to hold updated symlinks
  type: string
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_replace_many_links
