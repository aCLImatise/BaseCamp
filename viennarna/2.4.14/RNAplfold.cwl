class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/RNAplfold.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: shape_conversion
  doc: + [optional parameters]
  type: string
  inputBinding:
    prefix: --shapeConversion
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
- id: param_file
  doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
- id: binaries
  doc: Output accessibility profiles in binary format .  (default=off)
  type: boolean
  inputBinding:
    prefix: --binaries
- id: data_dot
  doc: (default=`D')
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAplfold
