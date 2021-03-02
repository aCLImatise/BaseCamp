class: CommandLineTool
id: fseqbootall.cwl
inputs:
- id: in_categories
  doc: properties File of input categories
  type: boolean?
  inputBinding:
    prefix: -categories
- id: in_mix_file
  doc: properties File of mixtures
  type: boolean?
  inputBinding:
    prefix: -mixfile
- id: in_anc_file
  doc: properties File of ancestors
  type: boolean?
  inputBinding:
    prefix: -ancfile
- id: in_weights
  doc: properties Weights file
  type: boolean?
  inputBinding:
    prefix: -weights
- id: in_factor_file
  doc: properties Factors file
  type: boolean?
  inputBinding:
    prefix: -factorfile
- id: in_datatype
  doc: "menu       [s] Choose the datatype (Values: s\n(Molecular sequences); m (Discrete\n\
    Morphology); r (Restriction Sites); g (Gene\nFrequencies))"
  type: boolean?
  inputBinding:
    prefix: -datatype
- id: in_test
  doc: "menu       [b] Choose test (Values: b (Bootstrap); j\n(Jackknife); c (Permute\
    \ species for each\ncharacter); o (Permute character order); s\n(Permute within\
    \ species); r (Rewrite data))"
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_print_data
  doc: boolean    [N] Print out the data at start of run
  type: boolean?
  inputBinding:
    prefix: -printdata
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fseqbootall
