class: CommandLineTool
id: falconc_m4filt_contained.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__infn_string
  doc: =, --in-fn=   string  REQUIRED  Input m4 overlap file
  type: boolean?
  inputBinding:
    prefix: -i
- id: in__outfn_string
  doc: =, --out-fn=  string  REQUIRED  Output m4 overlap file
  type: File?
  inputBinding:
    prefix: -o
- id: in__nproc_int
  doc: "=, --n-proc=  int     24        Number of processes to run locally (ignored\n\
    for now)"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_min_len
  doc: "=      int     400       Minimum read length; reads shorter than\nminLen will\
    \ be discarded"
  type: boolean?
  inputBinding:
    prefix: --min-len
- id: in_min_idt_pct
  doc: "=  float   96.0      Minimum overlap identity; worse overlaps\nwill be discarded\n"
  type: boolean?
  inputBinding:
    prefix: --min-idt-pct
- id: in_m_four_filt_contained
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outfn_string
  doc: =, --out-fn=  string  REQUIRED  Output m4 overlap file
  type: File?
  outputBinding:
    glob: $(inputs.in__outfn_string)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0
cwlVersion: v1.1
baseCommand:
- falconc
- m4filt-contained
