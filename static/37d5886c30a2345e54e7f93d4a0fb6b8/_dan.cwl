class: CommandLineTool
id: _dan.cwl
inputs:
- id: window_size
  doc: integer    [20] The values of melting point and other thermodynamic properties
    of the sequence are determined by taking a short length of sequence known as a
    window and determining the properties of the sequence in that window. The window
    is incrementally moved along the sequence with the properties being calculated
    at each new position. (Integer from 1 to 100)
  type: boolean
  inputBinding:
    prefix: -windowsize
- id: shift_increment
  doc: integer    [1] This is the amount by which the window is moved at each increment
    in order to find the melting point and other properties along the sequence. (Integer
    1 or more)
  type: boolean
  inputBinding:
    prefix: -shiftincrement
- id: dna_conc
  doc: float      [50.] Enter DNA concentration (nM) (Number from 1.000 to 100000.000)
  type: boolean
  inputBinding:
    prefix: -dnaconc
- id: salt_conc
  doc: float      [50.] Enter salt concentration (mM) (Number from 1.000 to 1000.000)
  type: boolean
  inputBinding:
    prefix: -saltconc
- id: product
  doc: toggle     This prompts for percent formamide, percent of mismatches allowed
    and product length.
  type: boolean
  inputBinding:
    prefix: -product
- id: thermo
  doc: toggle     Output the DeltaG, DeltaH and DeltaS values of the sequence windows
    to the output data file.
  type: boolean
  inputBinding:
    prefix: -thermo
outputs: []
cwlVersion: v1.1
baseCommand:
- _dan
