class: CommandLineTool
id: hybrid_min.cwl
inputs:
- id: in_tm_in
  doc: (defaults to 37)
  type: long?
  inputBinding:
    prefix: --tmin
- id: in_tinc
  doc: (defaults to 1)
  type: long?
  inputBinding:
    prefix: --tinc
- id: in_tmax
  doc: (defaults to 37)
  type: long?
  inputBinding:
    prefix: --tmax
- id: in_suffix
  doc: =<[Na+] in M> (defaults to 1)
  type: long?
  inputBinding:
    prefix: --suffix
- id: in_magnesium
  doc: =<[Mg++] in M> (defaults to 0)
  type: boolean?
  inputBinding:
    prefix: --magnesium
- id: in_prohibit
  doc: =<i,j,k>
  type: boolean?
  inputBinding:
    prefix: --prohibit
- id: in_energy_only
  doc: '[=<P,W,MAX>] (defaults to 5,*,100; W determined by sequence length)'
  type: boolean?
  inputBinding:
    prefix: --energyOnly
- id: in_constraints
  doc: '[=<name of constraint file>] (defaults to prefix.aux)'
  type: boolean?
  inputBinding:
    prefix: --constraints
- id: in_all_pairs
  doc: (defaults to 30)
  type: long?
  inputBinding:
    prefix: --allpairs
- id: in_prefilter
  doc: =<value1, value2>
  type: boolean?
  inputBinding:
    prefix: --prefilter
- id: in_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_file_two
  doc: ''
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
- hybrid-min
