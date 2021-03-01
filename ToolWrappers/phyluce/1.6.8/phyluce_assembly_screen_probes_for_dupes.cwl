class: CommandLineTool
id: phyluce_assembly_screen_probes_for_dupes.cwl
inputs:
- id: in_last_z
  doc: The lastz input
  type: string?
  inputBinding:
    prefix: --lastz
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_screen_probes_for_dupes
