class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/RNAaliduplex.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: delta_energy
  doc: Compute suboptimal structures with energy in a certain range of the optimum
    (kcal/mol). Default is calculation of mfe structure only.
  type: string
  inputBinding:
    prefix: --deltaEnergy
- id: sorted
  doc: print output sorted by free energy (default=off)
  type: boolean
  inputBinding:
    prefix: --sorted
- id: temp
  doc: Rescale energy parameters to a temperature of temp C. Default is 37C.
  type: string
  inputBinding:
    prefix: --temp
- id: no_tetra
  doc: Do not include special tabulated stabilizing energies for tri-, tetra- and
    hexaloop hairpins. Mostly for testing. (default=off)
  type: boolean
  inputBinding:
    prefix: --noTetra
- id: dangles
  doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: no_lp
  doc: Produce structures without lonely pairs (helices of length 1). (default=off)
  type: boolean
  inputBinding:
    prefix: --noLP
- id: no_gu
  doc: Do not allow GU pairs (default=off)
  type: boolean
  inputBinding:
    prefix: --noGU
- id: no_closing_gu
  doc: Do not allow GU pairs at the end of helices (default=off)
  type: boolean
  inputBinding:
    prefix: --noClosingGU
- id: nsp
  doc: Allow other pairs in addition to the usual AU,GC,and GU pairs.
  type: string
  inputBinding:
    prefix: --nsp
- id: param_file
  doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
- id: file_one_dot_aln
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_two_dot_aln
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAaliduplex
