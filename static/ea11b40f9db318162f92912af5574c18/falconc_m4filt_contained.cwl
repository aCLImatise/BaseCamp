class: CommandLineTool
id: falconc_m4filt_contained.cwl
inputs:
- id: in__infn_string
  doc: =, --in-fn=                    string  REQUIRED  Input m4 overlap file
  type: boolean?
  inputBinding:
    prefix: -i
- id: in__outfn_string
  doc: =, --out-fn=                   string  REQUIRED  Output m4 overlap file
  type: File?
  inputBinding:
    prefix: -o
- id: in_lfc
  doc: "bool    false     IGNORED (used in\novlp_to_graph)"
  type: boolean?
  inputBinding:
    prefix: --lfc
- id: in_disable_chime_r_bridge_removal
  doc: "bool    false     IGNORED (used in\novlp_to_graph)"
  type: boolean?
  inputBinding:
    prefix: --disable_chimer_bridge_removal
- id: in_ctg_prefix
  doc: "=                    string  \"\"        IGNORED (used in\novlp_to_graph)"
  type: boolean?
  inputBinding:
    prefix: --ctg_prefix
- id: in_min_len
  doc: "=                       int     400       Minimum read length; reads\nshorter\
    \ than minLen will be\ndiscarded"
  type: boolean?
  inputBinding:
    prefix: --min-len
- id: in_min_idt_pct
  doc: "=                   float   96.0      Minimum overlap identity;\nworse overlaps\
    \ will be\ndiscarded\n"
  type: boolean?
  inputBinding:
    prefix: --min-idt-pct
- id: in_help
  doc: '--help-syntax                                      advanced:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outfn_string
  doc: =, --out-fn=                   string  REQUIRED  Output m4 overlap file
  type: File?
  outputBinding:
    glob: $(inputs.in__outfn_string)
hints: []
cwlVersion: v1.1
baseCommand:
- falconc
- m4filt-contained
