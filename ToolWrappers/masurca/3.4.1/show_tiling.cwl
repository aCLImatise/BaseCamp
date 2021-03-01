class: CommandLineTool
id: show_tiling.cwl
inputs:
- id: in_describe_path_tabdelimitedalignment
  doc: "Describe the tiling path by printing the tab-delimited\nalignment region coordinates\
    \ to stdout"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_assume_reference_sequences
  doc: "Assume the reference sequences are circular, and allow\ntiled contigs to span\
    \ the origin"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_set_maximum_gap
  doc: "Set maximum gap between clustered alignments [-1, INT_MAX]\nA value of -1\
    \ will represent infinity\n(nucmer default = 1000)\n(promer default = -1)"
  type: long?
  inputBinding:
    prefix: -g
- id: in_set_minimum_percent
  doc: "Set minimum percent identity to tile [0.0, 100.0]\n(nucmer default = 90.0)\n\
    (promer default = 55.0)"
  type: double?
  inputBinding:
    prefix: -i
- id: in_set_minimum_length
  doc: "Set minimum length contig to report [-1, INT_MAX]\nA value of -1 will represent\
    \ infinity\n(common default = 1)"
  type: long?
  inputBinding:
    prefix: -l
- id: in_output_pseudo_molecule
  doc: Output a pseudo molecule of the query contigs to 'file'
  type: File?
  inputBinding:
    prefix: -p
- id: in_deal_repetitive_contigs
  doc: "Deal with repetitive contigs by randomly placing them\nin one of their copy\
    \ locations (implies -V 0)"
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_output_style_list
  doc: "Output a TIGR style contig list of each query sequence\nthat sufficiently\
    \ matches the reference (non-circular)"
  type: File?
  inputBinding:
    prefix: -t
- id: in_output_tabdelimited_region
  doc: "Output the tab-delimited alignment region coordinates\nof the unusable contigs\
    \ to 'file'"
  type: File?
  inputBinding:
    prefix: -u
- id: in_set_minimum_contig_coverage_tile
  doc: "Set minimum contig coverage to tile [0.0, 100.0]\n(nucmer default = 95.0)\
    \ sum of individual alignments\n(promer default = 50.0) extent of syntenic region"
  type: double?
  inputBinding:
    prefix: -v
- id: in_set_minimum_contig_coverage_difference
  doc: "Set minimum contig coverage difference [0.0, 100.0]\ni.e. the difference needed\
    \ to determine one alignment\nis 'better' than another alignment\n(nucmer default\
    \ = 10.0) sum of individual alignments\n(promer default = 30.0) extent of syntenic\
    \ region"
  type: double?
  inputBinding:
    prefix: -V
- id: in_describe_path_xml
  doc: "Describe the tiling path by printing the XML contig\nlinking information to\
    \ stdout"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_delta_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pseudo_molecule
  doc: Output a pseudo molecule of the query contigs to 'file'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pseudo_molecule)
- id: out_output_tabdelimited_region
  doc: "Output the tab-delimited alignment region coordinates\nof the unusable contigs\
    \ to 'file'"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_tabdelimited_region)
hints: []
cwlVersion: v1.1
baseCommand:
- show-tiling
