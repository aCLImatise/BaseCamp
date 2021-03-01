class: CommandLineTool
id: ipa2_ovlp_to_graph.cwl
inputs:
- id: in_overlap_file
  doc: 'a file that contains the overlap information. (default: preads.m4)'
  type: File?
  inputBinding:
    prefix: --overlap-file
- id: in_lfc
  doc: 'use local flow constraint method rather than best overlap method to resolve
    knots in string graph (default: False)'
  type: boolean?
  inputBinding:
    prefix: --lfc
- id: in_disable_chime_r_bridge_removal
  doc: 'disable chimer induced bridge removal (default: False)'
  type: boolean?
  inputBinding:
    prefix: --disable-chimer-bridge-removal
- id: in_ctg_prefix
  doc: 'Prefix for contig names. (default: )'
  type: string?
  inputBinding:
    prefix: --ctg-prefix
- id: in_haplo_spur
  doc: 'Apply the haplospur contig extraction algorithm. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --haplospur
- id: in_depth_cut_off
  doc: 'Depth cutoff threshold (number of nodes) for bundle finding. (default: 48)'
  type: long?
  inputBinding:
    prefix: --depth-cutoff
- id: in_width_cut_off
  doc: 'Width cutoff threshold (number of nodes) for bundle finding. (default: 16)'
  type: long?
  inputBinding:
    prefix: --width-cutoff
- id: in_length_cut_off
  doc: 'Depth cutoff threshold (number of nodes) for bundle finding. (default: 500000)'
  type: long?
  inputBinding:
    prefix: --length-cutoff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbipa:1.3.2--hee625c5_0
cwlVersion: v1.1
baseCommand:
- ipa2_ovlp_to_graph
