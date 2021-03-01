class: CommandLineTool
id: genremdinputs.py.cwl
inputs:
- id: in_author
  doc: show the program's author name and exit
  type: boolean?
  inputBinding:
    prefix: --author
- id: in_overwrite
  doc: 'Allow existing outputs to be overwritten. Default:'
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_inputs
  doc: "[FILE [FILE ...]]\nInput files containing pH, Redox Potential,\nTemperature,\
    \ or Hamiltonian values. Each file must\nstate the type of exchange on the first\
    \ line (same as\nin the exch_type flag of the remd-file for M-REMD\nsimulations),\
    \ a description in the second line, and\nall variable values on the following\
    \ lines (one value\nper line). As the number of replicas on each REMD\ndimension\
    \ needs to be even, the number of values needs\nto be even."
  type: boolean?
  inputBinding:
    prefix: -inputs
- id: in_group_file
  doc: "[FILE [FILE ...]]\nReference groupfiles. Each reference groupfile must\ncontain\
    \ only a single block referring to a single\nreplica. In this block the replica\
    \ number must be\nreplaced by REPNUM (the program will replace this flag\nlater\
    \ in order to create the whole groupfile file). If\ndoing a REMD simulation with\
    \ the Hamiltonian\ndimension, the prmtop file name may be replaced by the\nsame\
    \ flag entered in the first line of the hamiltonian\nfile given in the -inputs\
    \ flag. The reference\ngroupfiles must be given in the same order as their\ncorresponding\
    \ reference mdin files."
  type: boolean?
  inputBinding:
    prefix: -groupfile
- id: in_reference_mdin_files
  doc: "[FILE [FILE ...]]  Reference mdin files. Each reference mdin file must\ncontain\
    \ the variable(s) being exchanged replaced by\nthe same flag entered in the first\
    \ line of the file\ngiven in the -inputs flag. Examples: solvph=PH,\nsolve=REDOX,\
    \ temp0=TEMPERATURE. In order to insure\neach replica has a different random seed\
    \ (recommended)\nyou must place ig=RANDOMNUM. The reference mdin files\nmust be\
    \ given in the same order as their corresponding\nreference groupfiles."
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_di_sang
  doc: "[FILE [FILE ...]]\nReference DISANG files. If doing Umbrella Sampling in\n\
    a Hamiltonian dimension, the target distance or angle\nmust be replaced by the\
    \ same flag entered in the first\nline of the file given in the -inputs flag.\
    \ Example:\nr1=-99.0, r2=HAMILTONIAN, r3=HAMILTONIAN, r4=99.0. The\nreference\
    \ disang files must be given in the same order\nas their corresponding reference\
    \ mdin files."
  type: boolean?
  inputBinding:
    prefix: -disang
- id: in_re_md_file_out
  doc: "Name of the -remd-file output file. Default:\nremd.dim.[REMD dimensions types]remd"
  type: File?
  inputBinding:
    prefix: -remd-file-out
- id: in_random_seed
  doc: 'Seed for the random number generator. Default: 10'
  type: long?
  inputBinding:
    prefix: -randomseed
- id: in_no_sort
  doc: "If stated, the replica ordering per dimension will not\nbe sorted. If not\
    \ stated, sorting will be done if the\ninput values are float or integer."
  type: boolean?
  inputBinding:
    prefix: -nosort
- id: in_verbose
  doc: "If stated, prints information on the screen while the\nprogram is executed."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_false
  doc: 'Required Arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_re_md_file_out
  doc: "Name of the -remd-file output file. Default:\nremd.dim.[REMD dimensions types]remd"
  type: File?
  outputBinding:
    glob: $(inputs.in_re_md_file_out)
hints: []
cwlVersion: v1.1
baseCommand:
- genremdinputs.py
