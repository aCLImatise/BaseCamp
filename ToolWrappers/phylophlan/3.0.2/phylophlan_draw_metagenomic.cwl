class: CommandLineTool
id: phylophlan_draw_metagenomic.cwl
inputs:
- id: in_input
  doc: "The input file generated from\nphylophlan_metagenomic.py (default: None)"
  type: File?
  inputBinding:
    prefix: --input
- id: in_map
  doc: "A mapping file that maps each bin to its metagenome\n(default: None)"
  type: File?
  inputBinding:
    prefix: --map
- id: in_top
  doc: "The number of SGBs to display in the figure (default:\n20)"
  type: long?
  inputBinding:
    prefix: --top
- id: in_output
  doc: 'Prefix output files (default: output_heatmap)'
  type: string?
  inputBinding:
    prefix: --output
- id: in_separator
  doc: 'The separator used in the mapping file (default: )'
  type: File?
  inputBinding:
    prefix: --separator
- id: in_dpi
  doc: 'Dpi resolution of the images (default: 200)'
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_images_output_format
  doc: 'Images output format (default: svg)'
  type: string?
  inputBinding:
    prefix: -f
- id: in_citation
  doc: Show citation
  type: boolean?
  inputBinding:
    prefix: --citation
- id: in_verbose
  doc: 'Prints more stuff (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylophlan:3.0.2--py_0
cwlVersion: v1.1
baseCommand:
- phylophlan_draw_metagenomic
