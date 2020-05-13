class: CommandLineTool
id: fseqbootall.cwl
inputs:
- id: categories
  doc: properties File of input categories
  type: boolean
  inputBinding:
    prefix: -categories
- id: mix_file
  doc: properties File of mixtures
  type: boolean
  inputBinding:
    prefix: -mixfile
- id: anc_file
  doc: properties File of ancestors
  type: boolean
  inputBinding:
    prefix: -ancfile
- id: weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: factor_file
  doc: properties Factors file
  type: boolean
  inputBinding:
    prefix: -factorfile
- id: datatype
  doc: 'menu       [s] Choose the datatype (Values: s (Molecular sequences); m (Discrete
    Morphology); r (Restriction Sites); g (Gene Frequencies))'
  type: boolean
  inputBinding:
    prefix: -datatype
- id: test
  doc: 'menu       [b] Choose test (Values: b (Bootstrap); j (Jackknife); c (Permute
    species for each character); o (Permute character order); s (Permute within species);
    r (Rewrite data))'
  type: boolean
  inputBinding:
    prefix: -test
- id: print_data
  doc: boolean    [N] Print out the data at start of run
  type: boolean
  inputBinding:
    prefix: -printdata
outputs: []
cwlVersion: v1.1
baseCommand:
- fseqbootall
