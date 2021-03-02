class: CommandLineTool
id: rblist.cwl
inputs:
- id: in_input_ligand_sd
  doc: <InputSDFile> - input ligand SD file
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_outputsdfile_output_sd
  doc: <OutputSDFile> - output SD file with descriptors (default=no output)
  type: File?
  inputBinding:
    prefix: -o
- id: in_ap
  doc: '- protonate all neutral amines, guanidines, imidazoles (default=disabled)'
  type: boolean?
  inputBinding:
    prefix: -ap
- id: in_an
  doc: '- deprotonate all carboxylic, sulphur and phosphorous acid groups (default=disabled)'
  type: boolean?
  inputBinding:
    prefix: -an
- id: in_all_h
  doc: '- read all hydrogens present (default=polar hydrogens only)'
  type: boolean?
  inputBinding:
    prefix: -allH
- id: in_tr
  doc: '- rotate all 2ndry amides to trans (default=leave alone)'
  type: boolean?
  inputBinding:
    prefix: -tr
- id: in_verbose_listing_ligand
  doc: '- verbose listing of ligand atoms and rotable bonds (default = compact table
    format)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_inputs_d_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_outputs_d_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outputsdfile_output_sd
  doc: <OutputSDFile> - output SD file with descriptors (default=no output)
  type: File?
  outputBinding:
    glob: $(inputs.in_outputsdfile_output_sd)
hints: []
cwlVersion: v1.1
baseCommand:
- rblist
