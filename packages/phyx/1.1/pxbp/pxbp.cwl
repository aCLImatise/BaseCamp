class: CommandLineTool
id: pxbp.cwl
inputs:
- id: in_tree_f
  doc: input treefile, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --treef
- id: in_verbose
  doc: give more output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_edge_all
  doc: "force edgewise (not node - so when things are unrooted) and\nassume all taxa\
    \ are present in all trees"
  type: boolean?
  inputBinding:
    prefix: --edgeall
- id: in_unique_tree
  doc: output unique trees and *no* other output
  type: boolean?
  inputBinding:
    prefix: --uniquetree
- id: in_map_tree
  doc: "put the bipart freq on the edges of this tree. This will\ncreate a *.pxbpmapped.tre\
    \ file."
  type: File?
  inputBinding:
    prefix: --maptree
- id: in_cut_off
  doc: skip biparts that have support lower than this.
  type: boolean?
  inputBinding:
    prefix: --cutoff
- id: in_suppress
  doc: "don't print all the output (maybe you use this\nwith the maptree feature"
  type: boolean?
  inputBinding:
    prefix: --suppress
- id: in_out_f
  doc: output file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_citation
  doc: display phyx citation and exit
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_f
  doc: output file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxbp
