class: CommandLineTool
id: dan.cwl
inputs:
- id: in_window_size
  doc: "integer    [20] The values of melting point and other\nthermodynamic properties\
    \ of the sequence are\ndetermined by taking a short length of\nsequence known\
    \ as a window and determining\nthe properties of the sequence in that\nwindow.\
    \ The window is incrementally moved\nalong the sequence with the properties being\n\
    calculated at each new position. (Integer\nfrom 1 to 100)"
  type: boolean
  inputBinding:
    prefix: -windowsize
- id: in_shift_increment
  doc: "integer    [1] This is the amount by which the window\nis moved at each increment\
    \ in order to find\nthe melting point and other properties along\nthe sequence.\
    \ (Integer 1 or more)"
  type: boolean
  inputBinding:
    prefix: -shiftincrement
- id: in_dna_conc
  doc: "float      [50.] Enter DNA concentration (nM) (Number\nfrom 1.000 to 100000.000)"
  type: boolean
  inputBinding:
    prefix: -dnaconc
- id: in_salt_conc
  doc: "float      [50.] Enter salt concentration (mM) (Number\nfrom 1.000 to 1000.000)"
  type: boolean
  inputBinding:
    prefix: -saltconc
- id: in_product
  doc: "toggle     This prompts for percent formamide, percent\nof mismatches allowed\
    \ and product length."
  type: boolean
  inputBinding:
    prefix: -product
- id: in_thermo
  doc: "toggle     Output the DeltaG, DeltaH and DeltaS values\nof the sequence windows\
    \ to the output data\nfile."
  type: File
  inputBinding:
    prefix: -thermo
- id: in_rna
  doc: "boolean    This specifies that the sequence is an RNA\nsequence and not a\
    \ DNA sequence."
  type: boolean
  inputBinding:
    prefix: -rna
- id: in_plot
  doc: "toggle     If this is not specified then the file of\noutput data is produced,\
    \ else a plot of the\nmelting point along the sequence is\nproduced."
  type: File
  inputBinding:
    prefix: -plot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_thermo
  doc: "toggle     Output the DeltaG, DeltaH and DeltaS values\nof the sequence windows\
    \ to the output data\nfile."
  type: File
  outputBinding:
    glob: $(inputs.in_thermo)
- id: out_plot
  doc: "toggle     If this is not specified then the file of\noutput data is produced,\
    \ else a plot of the\nmelting point along the sequence is\nproduced."
  type: File
  outputBinding:
    glob: $(inputs.in_plot)
cwlVersion: v1.1
baseCommand:
- dan
