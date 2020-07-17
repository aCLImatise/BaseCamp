class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/RNAeval.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden  options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: verbose
  doc: Print out energy contribution of each loop in the  structure. (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: temp
  doc: Rescale energy parameters to a temperature of temp  C. Default is 37C.
  type: string
  inputBinding:
    prefix: --temp
- id: no_tetra
  doc: Do not include special tabulated stabilizing  energies for tri-, tetra- and
    hexaloop hairpins.  Mostly for testing. (default=off)
  type: boolean
  inputBinding:
    prefix: --noTetra
- id: dangles
  doc: How to treat "dangling end" energies for bases  adjacent to helices in free
    ends and multi-loops (default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: energy_model
  doc: Rarely used option to fold sequences from the  artificial ABCD... alphabet,
    where A pairs B,  C-D etc.  Use the energy parameters for GC (-e  1) or AU (-e
    2) pairs.
  type: long
  inputBinding:
    prefix: --energyModel
- id: param_file
  doc: Read energy parameters from paramfile, instead of  using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
- id: circ
  doc: Assume a circular (instead of linear) RNA  molecule. (default=off)
  type: boolean
  inputBinding:
    prefix: --circ
- id: log_ml
  doc: Recalculate energies of structures using a  logarithmic energy function for
    multi-loops  before output. (default=off)
  type: boolean
  inputBinding:
    prefix: --logML
- id: program
  doc: --noconv               Do not automatically substitude nucleotide "T"  with
    "U" (default=off)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAeval
