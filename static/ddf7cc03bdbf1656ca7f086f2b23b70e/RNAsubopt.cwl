class: CommandLineTool
id: RNAsubopt.cwl
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
- id: verbose
  doc: Be verbose (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: noconv
  doc: Do not automatically substitude nucleotide "T" with "U" (default=off)
  type: boolean
  inputBinding:
    prefix: --noconv
- id: in_file
  doc: Read a file instead of reading from stdin
  type: File
  inputBinding:
    prefix: --infile
- id: outfile
  doc: '[=<filename>]    Print output to file instead of stdout'
  type: boolean
  inputBinding:
    prefix: --outfile
- id: auto_id
  doc: Automatically generate an ID for each sequence. (default=off)
  type: boolean
  inputBinding:
    prefix: --auto-id
- id: id_prefix
  doc: Prefix for automatically generated IDs (as used in output file names) (default=`sequence')
  type: string
  inputBinding:
    prefix: --id-prefix
- id: max_bp_span
  doc: Set the maximum base pair span (default=`-1')
  type: long
  inputBinding:
    prefix: --maxBPspan
- id: constraint
  doc: "[=<filename>] Calculate structures subject to constraints. (default=`')"
  type: boolean
  inputBinding:
    prefix: --constraint
- id: batch
  doc: Use constraints for multiple sequences. (default=off)
  type: boolean
  inputBinding:
    prefix: --batch
- id: canonical_bp_only
  doc: Remove non-canonical base pairs from the structure constraint (default=off)
  type: boolean
  inputBinding:
    prefix: --canonicalBPonly
- id: enforce_constraint
  doc: Enforce base pairs given by round brackets ( ) in structure constraint (default=off)
  type: boolean
  inputBinding:
    prefix: --enforceConstraint
- id: shape
  doc: Use SHAPE reactivity data in the folding recursions (does not work for Zuker
    suboptimals and stochastic backtracking yet)
  type: File
  inputBinding:
    prefix: --shape
- id: shape_method
  doc: =[D/Z/W] + [optional parameters] Specify the method how to convert SHAPE reactivity
    data to pseudo energy contributions (default=`D')
  type: boolean
  inputBinding:
    prefix: --shapeMethod
- id: shape_conversion
  doc: /C/S/L/O  + [optional parameters] Specify the method used to convert SHAPE
    reactivities to pairing probabilities when using the SHAPE approach of Zarringhalam
    et al. (default=`O')
  type: string
  inputBinding:
    prefix: --shapeConversion
- id: delta_energy
  doc: Compute suboptimal structures with energy in a certain range of the optimum
    (kcal/mol). Default is calculation of mfe structure only.
  type: string
  inputBinding:
    prefix: --deltaEnergy
- id: delta_energy_post
  doc: Only print structures with energy within range of the mfe after post reevaluation
    of energies.
  type: string
  inputBinding:
    prefix: --deltaEnergyPost
- id: sorted
  doc: Sort the suboptimal structures by energy. (default=off)
  type: boolean
  inputBinding:
    prefix: --sorted
- id: stoch_bt
  doc: Instead of producing all suboptimals in an energy range, produce a random sample
    of suboptimal structures, drawn with probabilities equal to their Boltzmann weights
    via stochastic backtracking in the partition function. The -e and -p options are
    mutually exclusive.
  type: string
  inputBinding:
    prefix: --stochBT
- id: stoch_bt_en
  doc: Same as "--stochBT" but also print out the energies and probabilities of the
    backtraced structures.
  type: string
  inputBinding:
    prefix: --stochBT_en
- id: nonredundant
  doc: Enable non-redundant sampling strategy. (default=off)
  type: boolean
  inputBinding:
    prefix: --nonRedundant
- id: circ
  doc: Assume a circular (instead of linear) RNA molecule. (default=off)
  type: boolean
  inputBinding:
    prefix: --circ
- id: dos
  doc: Compute density of states instead of secondary structures (default=off)
  type: boolean
  inputBinding:
    prefix: --dos
- id: zuker
  doc: Compute Zuker suboptimals instead of all suboptimal structures within an engery
    band around the MFE. (default=off)
  type: boolean
  inputBinding:
    prefix: --zuker
- id: g_quad
  doc: Incoorporate G-Quadruplex formation into the structure prediction algorithm
    (no support of G-quadruplex prediction for stochastic backtracking and Zuker-style
    suboptimals yet) (default=off)
  type: boolean
  inputBinding:
    prefix: --gquad
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
- id: log_ml
  doc: Recalculate energies of structures using a logarithmic energy function for
    multi-loops before output.  (default=off)
  type: boolean
  inputBinding:
    prefix: --logML
- id: param_file
  doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAsubopt
