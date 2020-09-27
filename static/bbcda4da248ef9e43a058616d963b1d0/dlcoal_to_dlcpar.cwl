class: CommandLineTool
id: dlcoal_to_dlcpar.cwl
inputs:
- id: in_stree
  doc: species tree file in newick format
  type: File
  inputBinding:
    prefix: --stree
- id: in_s_map
  doc: gene to species map
  type: string
  inputBinding:
    prefix: --smap
- id: in_input_ext
  doc: 'input file extension (default: ".coal.tree")'
  type: File
  inputBinding:
    prefix: --inputext
- id: in_output_ext
  doc: 'output file extension (default: ".dlcpar")'
  type: File
  inputBinding:
    prefix: --outputext
- id: in_use_locus_recon
  doc: if set, use locus recon file rather than MPR
  type: boolean
  inputBinding:
    prefix: --use-locus-recon
- id: in_no_delay
  doc: if set, disallow duplication between speciation and
  type: boolean
  inputBinding:
    prefix: --no-delay
- id: in_coalescence
  doc: 'Information:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_ext
  doc: 'output file extension (default: ".dlcpar")'
  type: File
  outputBinding:
    glob: $(inputs.in_output_ext)
cwlVersion: v1.1
baseCommand:
- dlcoal_to_dlcpar
