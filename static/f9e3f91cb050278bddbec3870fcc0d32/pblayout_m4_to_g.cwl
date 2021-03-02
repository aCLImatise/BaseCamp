class: CommandLineTool
id: pblayout_m4_to_g.cwl
inputs:
- id: in_lfc
  doc: "use local flow constraint method rather\nthan best overlap method to resolve\n\
    knots in string graph"
  type: boolean?
  inputBinding:
    prefix: --lfc
- id: in_disable_chime_r_bridge_removal
  doc: and do not write chimer_nodes file
  type: boolean?
  inputBinding:
    prefix: --disable-chimer-bridge-removal
- id: in_ctg_prefix
  doc: STR  Prefix for contig names.
  type: boolean?
  inputBinding:
    prefix: --ctg-prefix
- id: in_in_do_tm_four
  doc: STR  Input M4 or M4F. (default should be
  type: long
  inputBinding:
    position: 0
- id: in_pre_ads_do_tm_four
  doc: 'out.g                            STR  (Output Graph: ctg_paths, c_path,'
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pblayout
- m4-to-g
