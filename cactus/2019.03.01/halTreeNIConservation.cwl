class: CommandLineTool
id: halTreeNIConservation.py.cwl
inputs:
- id: hal
  doc: input hal
  type: string
  inputBinding:
    position: 0
- id: workdir
  doc: working dir for all bed files
  type: string
  inputBinding:
    position: 1
- id: background_bed_name
  doc: 'Name function for background bed files where genome name is specified as %s.
    Computed using halTreeNIBackground (default: %%s_bg.bed)'
  type: string
  inputBinding:
    prefix: --backgroundBedName
- id: mutations_bed_name
  doc: 'Name function for background bed files where genome name is specified as %s.
    Computed using halTreeMutations (default: %%s.bed)'
  type: string
  inputBinding:
    prefix: --mutationsBedName
- id: conserved_bed_name
  doc: 'Name function for output bed files where genome name is specifed as %s (default:
    %%s_cons.bed)'
  type: string
  inputBinding:
    prefix: --conservedBedName
- id: root
  doc: 'root (default: None)'
  type: string
  inputBinding:
    prefix: --root
- id: events
  doc: 'event tags. (default: I GI D DB GD GDB)'
  type: string
  inputBinding:
    prefix: --events
- id: pval
  doc: 'max pval of conserved segment (default: 0.05)'
  type: string
  inputBinding:
    prefix: --pval
- id: cut_off
  doc: 'cut <cutoff>*mu^-1 off each side of interval. For upper bounds use 0.5 and
    lower bounds 2.0 (default: 0.5)'
  type: string
  inputBinding:
    prefix: --cutoff
outputs: []
cwlVersion: v1.1
baseCommand:
- halTreeNIConservation.py
