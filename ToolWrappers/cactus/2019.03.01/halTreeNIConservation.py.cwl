class: CommandLineTool
id: halTreeNIConservation.py.cwl
inputs:
- id: in_background_bed_name
  doc: "Name function for background bed files where genome\nname is specified as\
    \ %s. Computed using\nhalTreeNIBackground (default: %%s_bg.bed)"
  type: string?
  inputBinding:
    prefix: --backgroundBedName
- id: in_mutations_bed_name
  doc: "Name function for background bed files where genome\nname is specified as\
    \ %s. Computed using\nhalTreeMutations (default: %%s.bed)"
  type: string?
  inputBinding:
    prefix: --mutationsBedName
- id: in_conserved_bed_name
  doc: "Name function for output bed files where genome name\nis specifed as %s (default:\
    \ %%s_cons.bed)"
  type: string?
  inputBinding:
    prefix: --conservedBedName
- id: in_root
  doc: 'root (default: None)'
  type: string?
  inputBinding:
    prefix: --root
- id: in_events
  doc: 'event tags. (default: I GI D DB GD GDB)'
  type: string?
  inputBinding:
    prefix: --events
- id: in_pval
  doc: 'max pval of conserved segment (default: 0.05)'
  type: long?
  inputBinding:
    prefix: --pval
- id: in_cut_off
  doc: "cut <cutoff>*mu^-1 off each side of interval. For\nupper bounds use 0.5 and\
    \ lower bounds 2.0 (default:\n0.5)\n"
  type: double?
  inputBinding:
    prefix: --cutoff
- id: in_hal
  doc: input hal
  type: string
  inputBinding:
    position: 0
- id: in_workdir
  doc: working dir for all bed files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- halTreeNIConservation.py
