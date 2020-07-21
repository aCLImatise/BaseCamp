class: CommandLineTool
id: ../../../ipa2_ovlp_to_graph.cwl
inputs:
- id: overlap_file
  doc: 'a file that contains the overlap information. (default: preads.m4)'
  type: string
  inputBinding:
    prefix: --overlap-file
- id: lfc
  doc: 'use local flow constraint method rather than best overlap method to resolve
    knots in string graph (default: False)'
  type: boolean
  inputBinding:
    prefix: --lfc
- id: disable_chime_r_bridge_removal
  doc: 'disable chimer induced bridge removal (default: False)'
  type: boolean
  inputBinding:
    prefix: --disable-chimer-bridge-removal
- id: ctg_prefix
  doc: 'Prefix for contig names. (default: )'
  type: string
  inputBinding:
    prefix: --ctg-prefix
- id: haplo_spur
  doc: 'Apply the haplospur contig extraction algorithm. (default: False)'
  type: boolean
  inputBinding:
    prefix: --haplospur
- id: depth_cut_off
  doc: 'Depth cutoff threshold (number of nodes) for bundle finding. (default: 48)'
  type: string
  inputBinding:
    prefix: --depth-cutoff
- id: width_cut_off
  doc: 'Width cutoff threshold (number of nodes) for bundle finding. (default: 16)'
  type: string
  inputBinding:
    prefix: --width-cutoff
- id: length_cut_off
  doc: 'Depth cutoff threshold (number of nodes) for bundle finding. (default: 500000)'
  type: long
  inputBinding:
    prefix: --length-cutoff
outputs: []
cwlVersion: v1.1
baseCommand:
- ipa2_ovlp_to_graph
