#!/usr/bin/env cwl-runner

baseCommand:
- RNAsubopt
class: CommandLineTool
cwlVersion: v1.0
id: rnasubopt
inputs:
- doc: Print help, including all details and hidden options, and exit
  id: detailed_help
  inputBinding:
    prefix: --detailed-help
  type: boolean
- doc: Print help, including hidden options, and exit
  id: full_help
  inputBinding:
    prefix: --full-help
  type: boolean
- doc: Be verbose (default=off)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Do not automatically substitude nucleotide "T" with "U" (default=off)
  id: noconv
  inputBinding:
    prefix: --noconv
  type: boolean
- doc: Read a file instead of reading from stdin
  id: in_file
  inputBinding:
    prefix: --infile
  type: File
- doc: '[=<filename>]    Print output to file instead of stdout'
  id: outfile
  inputBinding:
    prefix: --outfile
  type: boolean
- doc: Automatically generate an ID for each sequence. (default=off)
  id: auto_id
  inputBinding:
    prefix: --auto-id
  type: boolean
- doc: Prefix for automatically generated IDs (as used in output file names) (default=`sequence')
  id: id_prefix
  inputBinding:
    prefix: --id-prefix
  type: string
- doc: Set the maximum base pair span (default=`-1')
  id: max_bp_span
  inputBinding:
    prefix: --maxBPspan
  type: long
- doc: "[=<filename>] Calculate structures subject to constraints. (default=`')"
  id: constraint
  inputBinding:
    prefix: --constraint
  type: boolean
- doc: Use constraints for multiple sequences. (default=off)
  id: batch
  inputBinding:
    prefix: --batch
  type: boolean
- doc: Remove non-canonical base pairs from the structure constraint (default=off)
  id: canonical_bp_only
  inputBinding:
    prefix: --canonicalBPonly
  type: boolean
- doc: Enforce base pairs given by round brackets ( ) in structure constraint (default=off)
  id: enforce_constraint
  inputBinding:
    prefix: --enforceConstraint
  type: boolean
- doc: Use SHAPE reactivity data in the folding recursions (does not work for Zuker
    suboptimals and stochastic backtracking yet)
  id: shape
  inputBinding:
    prefix: --shape
  type: File
- doc: =[D/Z/W] + [optional parameters] Specify the method how to convert SHAPE reactivity
    data to pseudo energy contributions (default=`D')
  id: shape_method
  inputBinding:
    prefix: --shapeMethod
  type: boolean
- doc: /C/S/L/O  + [optional parameters] Specify the method used to convert SHAPE
    reactivities to pairing probabilities when using the SHAPE approach of Zarringhalam
    et al. (default=`O')
  id: shape_conversion
  inputBinding:
    prefix: --shapeConversion
  type: string
- doc: Compute suboptimal structures with energy in a certain range of the optimum
    (kcal/mol). Default is calculation of mfe structure only.
  id: delta_energy
  inputBinding:
    prefix: --deltaEnergy
  type: string
- doc: Only print structures with energy within range of the mfe after post reevaluation
    of energies.
  id: delta_energy_post
  inputBinding:
    prefix: --deltaEnergyPost
  type: string
- doc: Sort the suboptimal structures by energy. (default=off)
  id: sorted
  inputBinding:
    prefix: --sorted
  type: boolean
- doc: Instead of producing all suboptimals in an energy range, produce a random sample
    of suboptimal structures, drawn with probabilities equal to their Boltzmann weights
    via stochastic backtracking in the partition function. The -e and -p options are
    mutually exclusive.
  id: stoch_bt
  inputBinding:
    prefix: --stochBT
  type: string
- doc: Same as "--stochBT" but also print out the energies and probabilities of the
    backtraced structures.
  id: stoch_bt_en
  inputBinding:
    prefix: --stochBT_en
  type: string
- doc: Enable non-redundant sampling strategy. (default=off)
  id: nonredundant
  inputBinding:
    prefix: --nonRedundant
  type: boolean
- doc: Assume a circular (instead of linear) RNA molecule. (default=off)
  id: circ
  inputBinding:
    prefix: --circ
  type: boolean
- doc: Compute density of states instead of secondary structures (default=off)
  id: dos
  inputBinding:
    prefix: --dos
  type: boolean
- doc: Compute Zuker suboptimals instead of all suboptimal structures within an engery
    band around the MFE. (default=off)
  id: zuker
  inputBinding:
    prefix: --zuker
  type: boolean
- doc: Incoorporate G-Quadruplex formation into the structure prediction algorithm
    (no support of G-quadruplex prediction for stochastic backtracking and Zuker-style
    suboptimals yet) (default=off)
  id: g_quad
  inputBinding:
    prefix: --gquad
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
- doc: Recalculate energies of structures using a logarithmic energy function for
    multi-loops before output.  (default=off)
  id: log_ml
  inputBinding:
    prefix: --logML
  type: boolean
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
