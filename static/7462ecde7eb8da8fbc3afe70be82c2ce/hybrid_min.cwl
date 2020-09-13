class: CommandLineTool
id: ../../../hybrid_min.cwl
inputs:
- id: in_na
  doc: =(RNA | DNA) (defaults to RNA)
  type: boolean
  inputBinding:
    prefix: --NA
- id: in_tm_in
  doc: (defaults to 37)
  type: long
  inputBinding:
    prefix: --tmin
- id: in_tinc
  doc: (defaults to 1)
  type: long
  inputBinding:
    prefix: --tinc
- id: in_tmax
  doc: (defaults to 37)
  type: long
  inputBinding:
    prefix: --tmax
- id: in_suffix
  doc: ''
  type: string
  inputBinding:
    prefix: --suffix
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_sodium
  doc: =<[Na+] in M> (defaults to 1)
  type: boolean
  inputBinding:
    prefix: --sodium
- id: in_magnesium
  doc: =<[Mg++] in M> (defaults to 0)
  type: boolean
  inputBinding:
    prefix: --magnesium
- id: in_polymer
  doc: ''
  type: boolean
  inputBinding:
    prefix: --polymer
- id: in_prohibit
  doc: =<i,j,k>
  type: boolean
  inputBinding:
    prefix: --prohibit
- id: in_energy_only
  doc: ''
  type: boolean
  inputBinding:
    prefix: --energyOnly
- id: in_no_isolate
  doc: ''
  type: boolean
  inputBinding:
    prefix: --noisolate
- id: in_zip
  doc: ''
  type: boolean
  inputBinding:
    prefix: --zip
- id: in_m_fold
  doc: '[=<P,W,MAX>] (defaults to 5,*,100; W determined by sequence length)'
  type: boolean
  inputBinding:
    prefix: --mfold
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_constraints
  doc: '[=<name of constraint file>] (defaults to prefix.aux)'
  type: boolean
  inputBinding:
    prefix: --constraints
- id: in_base_pairs
  doc: ''
  type: File
  inputBinding:
    prefix: --basepairs
- id: in_all_pairs
  doc: ''
  type: boolean
  inputBinding:
    prefix: --allpairs
- id: in_max_loop
  doc: (defaults to 30)
  type: long
  inputBinding:
    prefix: --maxloop
- id: in_no_dangle
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nodangle
- id: in_prefilter
  doc: =<value1, value2>
  type: boolean
  inputBinding:
    prefix: --prefilter
- id: in_stream
  doc: ''
  type: boolean
  inputBinding:
    prefix: --stream
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
cwlVersion: v1.1
baseCommand:
- hybrid-min
