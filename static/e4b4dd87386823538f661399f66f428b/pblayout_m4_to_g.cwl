class: CommandLineTool
id: pblayout_m4_to_g.cwl
inputs:
- id: in_disable_chime_r_bridge_removal
  doc: ), utg_data, utg_data0 (maybe)
  type: boolean?
  inputBinding:
    prefix: --disable-chimer-bridge-removal
- id: in_lfc
  doc: "use local flow constraint method rather than best overlap method to resolve\n\
    knots in string graph"
  type: boolean?
  inputBinding:
    prefix: --lfc
- id: in_ctg_prefix
  doc: STR  Prefix for contig names.
  type: boolean?
  inputBinding:
    prefix: --ctg-prefix
- id: in_in_do_tm_four
  doc: STR  Input M4 or M4F. (default should be preads.m4
  type: long
  inputBinding:
    position: 0
- id: in_out_dot_g
  doc: 'STR  (Output Graph: ctg_paths, c_path, sg_edges_list, chimer_nodes (if not'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbipa:1.3.2--hee625c5_0
cwlVersion: v1.1
baseCommand:
- pblayout
- m4-to-g
