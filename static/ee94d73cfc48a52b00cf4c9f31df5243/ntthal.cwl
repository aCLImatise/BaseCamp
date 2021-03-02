class: CommandLineTool
id: ntthal.cwl
inputs:
- id: in_mv
  doc: '- concentration of monovalent cations in mM, by default 50 mM'
  type: long?
  inputBinding:
    prefix: -mv
- id: in_dv
  doc: '- concentration of divalent cations in mM, by default 0 mM'
  type: long?
  inputBinding:
    prefix: -dv
- id: in_dntpconc_concentration_mm
  doc: dNTP_conc        - concentration of deoxynycleotide triphosphate in mM, by
    default 0 mM
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_dnaconc_concentration_nm
  doc: dna_conc         - concentration of DNA strands in nM, by default 50 nM
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_mode_type_end
  doc: mode             - alignment type, END1, END2, ANY and HAIRPIN, by default
    ANY (when duplex)
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_temp_temperature_calculated
  doc: temp             - temperature at which duplex is calculated, by default 37C
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_causes_alignment_displayed
  doc: '- causes the alignment NOT to be displayed on stderr, _only_ Tm is printed'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_max_loop
  doc: "- the maximum size of secondary structures loops.\nDefault is 30 (this is\
    \ maximum allowed length, currently)."
  type: long?
  inputBinding:
    prefix: -maxloop
- id: in_path
  doc: '- the path to the thermodynamic parameter files'
  type: File?
  inputBinding:
    prefix: -path
- id: in_oligo
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ntthal
