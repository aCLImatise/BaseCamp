class: CommandLineTool
id: RNAsubopt.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden  options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: constraint
  doc: Calculate structures subject to constraints. (default=off)
  type: boolean
  inputBinding:
    prefix: --constraint
- id: noconv
  doc: Do not automatically substitude nucleotide  "T" with "U" (default=off)
  type: boolean
  inputBinding:
    prefix: --noconv
- id: delta_energy
  doc: Compute suboptimal structures with energy in a  certain range of the optimum
    (kcal/mol).  Default is calculation of mfe structure only.
  type: string
  inputBinding:
    prefix: --deltaEnergy
- id: delta_energy_post
  doc: Only print structures with energy within range  of the mfe after post reevaluation
    of  energies.
  type: string
  inputBinding:
    prefix: --deltaEnergyPost
- id: sorted
  doc: Sort the suboptimal structures by energy. (default=off)
  type: boolean
  inputBinding:
    prefix: --sorted
- id: stoch_bt
  doc: Instead of producing all suboptimals in an  energy range, produce a random
    sample of  suboptimal structures, drawn with  probabilities equal to their Boltzmann  weights
    via stochastic backtracking in the  partition function. The -e and -p options
    are  mutually exclusive.
  type: string
  inputBinding:
    prefix: --stochBT
- id: circ
  doc: Assume a circular (instead of linear) RNA  molecule. (default=off)
  type: boolean
  inputBinding:
    prefix: --circ
- id: dos
  doc: Compute density of states instead of secondary  structures (default=off)
  type: boolean
  inputBinding:
    prefix: --dos
- id: zuker
  doc: Compute Zuker suboptimals instead of all  suboptimal structures within an engery
    band  arround the MFE. (default=off)
  type: boolean
  inputBinding:
    prefix: --zuker
- id: dangles
  doc: How to treat "dangling end" energies for  bases adjacent to helices in free
    ends and  multi-loops (default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: no_lp
  doc: Produce structures without lonely pairs  (helices of length 1). (default=off)
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
- id: log_ml
  doc: Recalculate energies of structures using a  logarithmic energy function for
    multi-loops  before output.  (default=off)
  type: boolean
  inputBinding:
    prefix: --logML
- id: param_file
  doc: Read energy parameters from paramfile, instead  of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAsubopt
