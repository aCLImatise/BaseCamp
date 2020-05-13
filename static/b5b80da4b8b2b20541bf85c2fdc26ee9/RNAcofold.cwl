class: CommandLineTool
id: RNAcofold.cwl
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
  doc: Be verbose. (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: jobs
  doc: "[=number]           Split batch input into jobs and start processing in parallel\
    \ using multiple threads. A value of 0 indicates to use as many parallel threads\
    \ as computation cores are available. (default=`0')"
  type: boolean
  inputBinding:
    prefix: --jobs
- id: nops
  doc: Do not produce postscript drawing of the mfe structure. (default=off)
  type: boolean
  inputBinding:
    prefix: --noPS
- id: noconv
  doc: Do not automatically substitute nucleotide "T" with "U" (default=off)
  type: boolean
  inputBinding:
    prefix: --noconv
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
  doc: Use SHAPE reactivity data to guide structure predictions
  type: File
  inputBinding:
    prefix: --shape
- id: shape_method
  doc: =[D/Z/W] + [optional parameters] Select method to incorporate SHAPE reactivity
    data. (default=`D')
  type: boolean
  inputBinding:
    prefix: --shapeMethod
- id: shape_conversion
  doc: /C/S/L/O  + [optional parameters] Select method to convert SHAPE reactivities
    to pairing probabilities. (default=`O')
  type: string
  inputBinding:
    prefix: --shapeConversion
- id: part_func
  doc: "[=INT]          Calculate the partition function and base pairing probability\
    \ matrix in addition to the mfe structure. Default is calculation of mfe structure\
    \ only. (default=`1')"
  type: boolean
  inputBinding:
    prefix: --partfunc
- id: all_pf
  doc: "[=INT]            Compute the partition function and free energies not only\
    \ of the hetero-dimer consisting of the two input sequences (the \"AB dimer\"\
    ), but also of the homo-dimers AA and BB as well as A and B monomers. (default=`1')"
  type: boolean
  inputBinding:
    prefix: --all_pf
- id: concentrations
  doc: In addition to everything listed under the -a option, read in initial monomer
    concentrations and compute the expected equilibrium concentrations of the 5 possible
    species (AB, AA, BB, A, B). (default=off)
  type: boolean
  inputBinding:
    prefix: --concentrations
- id: conc_file
  doc: Specify a file with initial concentrations for the two sequences.
  type: File
  inputBinding:
    prefix: --concfile
- id: centroid
  doc: Compute the centroid structure. (default=off)
  type: boolean
  inputBinding:
    prefix: --centroid
- id: me_a
  doc: "[=gamma]             Calculate an MEA (maximum expected accuracy) structure,\
    \ where the expected accuracy is computed from the pair probabilities: each base\
    \ pair (i,j) gets a score 2*gamma*p_ij and the score of an unpaired base is given\
    \ by the probability of not forming a pair. (default=`1.')"
  type: boolean
  inputBinding:
    prefix: --MEA
- id: g_quad
  doc: Incoorporate G-Quadruplex formation into the structure prediction algorithm.
    (default=off)
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
- id: param_file
  doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAcofold
