class: CommandLineTool
id: RNAdos.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: detailed_help
  doc: Print help, including all details and hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: verbose
  doc: Be verbose. (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: sequence
  doc: The RNA sequence (ACGU)
  type: string
  inputBinding:
    prefix: --sequence
- id: max_energy
  doc: Structures are only counted until this threshold is reached. Default is 0 kcal/mol.
    (default=`0')
  type: long
  inputBinding:
    prefix: --max-energy
- id: num_threads
  doc: Set the number of threads used for calculations (only available when compiled
    with OpenMP support)
  type: long
  inputBinding:
    prefix: --numThreads
- id: temp
  doc: Rescale energy parameters to a temperature of temp C. Default is 37C.
  type: string
  inputBinding:
    prefix: --temp
- id: dangles
  doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: param_file
  doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
- id: hashtable_bits
  doc: Set the size of the hash table for each cell in the dp-matrices. (default=`20')
  type: long
  inputBinding:
    prefix: --hashtable-bits
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAdos
