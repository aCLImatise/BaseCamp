class: CommandLineTool
id: phyluce_utilities_replace_many_links.cwl
inputs:
- id: in_in_dir
  doc: The directory containing the links to rename
  type: Directory?
  inputBinding:
    prefix: --indir
- id: in_oldpath
  doc: The text you want to replace in the oldpath (include '/')
  type: string?
  inputBinding:
    prefix: --oldpath
- id: in_newpath
  doc: "The text you want to use as a replacement in the newpath\n(include '/')"
  type: string?
  inputBinding:
    prefix: --newpath
- id: in_output_directory_hold
  doc: The output directory to hold updated symlinks
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_program_description
  doc: Program description
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_hold
  doc: The output directory to hold updated symlinks
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_hold)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_replace_many_links
