class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rblist.cwl
inputs:
- id: inputsdfile_input_ligand
  doc: <InputSDFile> - input ligand SD file
  type: boolean
  inputBinding:
    prefix: -i
- id: output_sd_file
  doc: <OutputSDFile> - output SD file with descriptors (default=no output)
  type: boolean
  inputBinding:
    prefix: -o
- id: ap
  doc: '- protonate all neutral amines, guanidines, imidazoles (default=disabled)'
  type: boolean
  inputBinding:
    prefix: -ap
- id: an
  doc: '- deprotonate all carboxylic, sulphur and phosphorous acid groups (default=disabled)'
  type: boolean
  inputBinding:
    prefix: -an
- id: all_h
  doc: '- read all hydrogens present (default=polar hydrogens only)'
  type: boolean
  inputBinding:
    prefix: -allH
- id: tr
  doc: '- rotate all 2ndry amides to trans (default=leave alone)'
  type: boolean
  inputBinding:
    prefix: -tr
- id: verbose_listing_ligand
  doc: '- verbose listing of ligand atoms and rotable bonds (default = compact table
    format)'
  type: boolean
  inputBinding:
    prefix: -l
- id: inputs_d_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outputs_d_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rblist
