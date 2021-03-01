class: CommandLineTool
id: pepdigest.cwl
inputs:
- id: in_menu
  doc: "menu       [1] Select number (Values: 1 (Trypsin); 2\n(Lys-C); 3 (Arg-C);\
    \ 4 (Asp-N); 5\n(V8-bicarb); 6 (V8-phosph); 7\n(Chymotrypsin); 8 (CNBr))"
  type: boolean?
  inputBinding:
    prefix: -menu
- id: in_mono
  doc: boolean    [N] Use monoisotopic weights
  type: boolean?
  inputBinding:
    prefix: -mono
- id: in_mw_data
  doc: datafile   [Emolwt.dat] Molecular weight data for amino
  type: boolean?
  inputBinding:
    prefix: -mwdata
- id: in_ragging
  doc: "boolean    Allows semi-specific and non-specific\ndigestion. This option is\
    \ particularly\nuseful for generating lists of peptide\nsequences for protein\
    \ identification using\nmass-spectrometry."
  type: boolean?
  inputBinding:
    prefix: -ragging
- id: in_termini
  doc: "menu       [1] Select number (Values: 1 (none); 2\n(nterm); 3 (cterm); 4 (nterm\
    \ OR cterm))"
  type: boolean?
  inputBinding:
    prefix: -termini
- id: in_overlap
  doc: "boolean    Used for partial digestion. Shows all cuts\nfrom favoured cut sites\
    \ plus 1..3, 2..4,\n3..5 etc but not (e.g.) 2..5. Overlaps are\ntherefore fragments\
    \ with exactly one\npotential cut site within it."
  type: boolean?
  inputBinding:
    prefix: -overlap
- id: in_all_partials
  doc: "boolean    As for overlap but fragments containing more\nthan one potential\
    \ cut site are included."
  type: boolean?
  inputBinding:
    prefix: -allpartials
- id: in_acids
  doc: -unfavoured         boolean    Trypsin will not normally cut after 'KR' if
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
- pepdigest
