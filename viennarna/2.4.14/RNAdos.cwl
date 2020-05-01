#!/usr/bin/env cwl-runner

baseCommand:
- RNAdos
class: CommandLineTool
cwlVersion: v1.0
id: rnados
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: Print help, including all details and hidden options, and exit
  id: detailed_help
  inputBinding:
    prefix: --detailed-help
  type: boolean
- doc: Be verbose. (default=off)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: The RNA sequence (ACGU)
  id: sequence
  inputBinding:
    prefix: --sequence
  type: string
- doc: Structures are only counted until this threshold is reached. Default is 0 kcal/mol.
    (default=`0')
  id: max_energy
  inputBinding:
    prefix: --max-energy
  type: long
- doc: Set the number of threads used for calculations (only available when compiled
    with OpenMP support)
  id: num_threads
  inputBinding:
    prefix: --numThreads
  type: long
- doc: Rescale energy parameters to a temperature of temp C. Default is 37C.
  id: temp
  inputBinding:
    prefix: --temp
  type: string
- doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  id: dangles
  inputBinding:
    prefix: --dangles
  type: long
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
- doc: Set the size of the hash table for each cell in the dp-matrices. (default=`20')
  id: hashtable_bits
  inputBinding:
    prefix: --hashtable-bits
  type: long
