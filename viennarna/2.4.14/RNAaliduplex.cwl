#!/usr/bin/env cwl-runner

baseCommand:
- RNAaliduplex
class: CommandLineTool
cwlVersion: v1.0
id: rnaaliduplex
inputs:
- doc: ''
  id: file_1aln
  inputBinding:
    position: 0
  type: File
- doc: ''
  id: file_2aln
  inputBinding:
    position: 1
  type: File
- doc: Print help, including all details and hidden options, and exit
  id: detailed_help
  inputBinding:
    prefix: --detailed-help
  type: boolean
- doc: Compute suboptimal structures with energy in a certain range of the optimum
    (kcal/mol). Default is calculation of mfe structure only.
  id: delta_energy
  inputBinding:
    prefix: --deltaEnergy
  type: string
- doc: print output sorted by free energy (default=off)
  id: sorted
  inputBinding:
    prefix: --sorted
  type: boolean
- doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  id: dangles
  inputBinding:
    prefix: --dangles
  type: long
- doc: Produce structures without lonely pairs (helices of length 1). (default=off)
  id: no_lp
  inputBinding:
    prefix: --noLP
  type: boolean
- doc: Do not allow GU pairs (default=off)
  id: no_gu
  inputBinding:
    prefix: --noGU
  type: boolean
- doc: Do not allow GU pairs at the end of helices (default=off)
  id: no_closing_gu
  inputBinding:
    prefix: --noClosingGU
  type: boolean
- doc: Allow other pairs in addition to the usual AU,GC,and GU pairs.
  id: nsp
  inputBinding:
    prefix: --nsp
  type: string
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
