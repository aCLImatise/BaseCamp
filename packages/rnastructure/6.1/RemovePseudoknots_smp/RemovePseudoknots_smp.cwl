class: CommandLineTool
id: RemovePseudoknots_smp.cwl
inputs:
- id: in_dna
  doc: "Specify that the sequence is DNA, and DNA parameters are to be used.\nDefault\
    \ is to use RNA parameters."
  type: boolean
  inputBinding:
    prefix: --DNA
- id: in_bracket
  doc: "Write the output as a dot-bracket file instead of a CT file. (Note that the\n\
    input file can be either a CT or bracket file, regardless of this option.)"
  type: boolean
  inputBinding:
    prefix: --bracket
- id: in_maximize
  doc: "Specify that the NUMBER of remaining base pairs should be maximized in the\n\
    pseudoknot-free structure in an energy-agnostic way -- i.e. with no regard\nfor\
    \ the folding free energy of the structure.\nThis is usually much faster than\
    \ the default behavior, which is to break\nbase-pairs such that the final structure(s)\
    \ have minimum free energy.\nThe default method often maximizes the number of\
    \ remaining base pairs, but\nnot always."
  type: boolean
  inputBinding:
    prefix: --maximize
- id: in_me_a
  doc: "Use the MaxExpect method (MEAFill) to break pseudoknots. This should\nproduce\
    \ identical results as the 'maximize' option (-m), but will be slower\n(for testing\
    \ only)."
  type: boolean
  inputBinding:
    prefix: --MEA
- id: in_quiet
  doc: "Suppress unnecessary output. This option is implied when the output file is\n\
    '-' (STDOUT)."
  type: File
  inputBinding:
    prefix: --quiet
- id: in_temperature
  doc: "Specify the temperature at which calculation takes place in Kelvin.\nDefault\
    \ is 310.15 K, which is 37 degrees C.\n"
  type: boolean
  inputBinding:
    prefix: --temperature
- id: in_remove_pseudo_knots
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_ct_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_output_ct_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_quiet
  doc: "Suppress unnecessary output. This option is implied when the output file is\n\
    '-' (STDOUT)."
  type: File
  outputBinding:
    glob: $(inputs.in_quiet)
- id: out_output_ct_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_ct_file)
cwlVersion: v1.1
baseCommand:
- RemovePseudoknots-smp
