class: CommandLineTool
id: chromosomer_fragmentmap.cwl
inputs:
- id: in_ratio_threshold
  doc: "the least ratio of two greatest fragment alignment\nscores to determine the\
    \ fragment placed to a reference\ngenome (default: 1.2)"
  type: double
  inputBinding:
    prefix: --ratio_threshold
- id: in_shrink_gaps
  doc: "shrink large interfragment gaps to the specified size\n(default: False)\n"
  type: boolean
  inputBinding:
    prefix: --shrink_gaps
- id: in_construct_fragment_map
  doc: Construct a fragment map from fragment alignments to reference chromosomes.
  type: string
  inputBinding:
    position: 0
- id: in_alignment_file
  doc: "a BLAST tabular file of fragment alignments to\nreference chromosomes"
  type: string
  inputBinding:
    position: 0
- id: in_gap_size
  doc: a size of a gap inserted between mapped fragments
  type: string
  inputBinding:
    position: 1
- id: in_fragment_lengths
  doc: "a file containing lengths of fragment sequences; it\ncan be obtained using\
    \ the 'chromosomer fastalength'\ntool"
  type: string
  inputBinding:
    position: 2
- id: in_output_fragment_map
  doc: an output fragment map file name
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chromosomer
- fragmentmap
