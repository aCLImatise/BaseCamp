#!/usr/bin/env cwl-runner

baseCommand:
- RNAfold
class: CommandLineTool
cwlVersion: v1.0
id: rnafold
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
- doc: Be verbose. (default=off)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: "[=number]           Split batch input into jobs and start processing in parallel\
    \ using multiple threads. A value of 0 indicates to use as many parallel threads\
    \ as computation cores are available. (default=`0')"
  id: jobs
  inputBinding:
    prefix: --jobs
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
- doc: Do not produce postscript drawing of the mfe structure. (default=off)
  id: nops
  inputBinding:
    prefix: --noPS
  type: boolean
- doc: Do not produce dot-plot postscript file containing base pair or stack probabilitities.
    (default=off)
  id: no_dp
  inputBinding:
    prefix: --noDP
  type: boolean
- doc: Do not automatically substitute nucleotide "T" with "U" (default=off)
  id: noconv
  inputBinding:
    prefix: --noconv
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
- doc: Use SHAPE reactivity data to guide structure predictions
  id: shape
  inputBinding:
    prefix: --shape
  type: File
- doc: "|Z|W       Select SHAPE reactivity data incorporation strategy. (default=`D')"
  id: shape_method
  inputBinding:
    prefix: --shapeMethod
  type: string
- doc: "|C|S|L|O Select method to convert SHAPE reactivities to pairing probabilities.\
    \ (default=`O')"
  id: shape_conversion
  inputBinding:
    prefix: --shapeConversion
  type: string
- doc: "[=INT]          Calculate the partition function and base pairing probability\
    \ matrix. (default=`1')"
  id: part_func
  inputBinding:
    prefix: --partfunc
  type: boolean
- doc: "[=gamma]             Calculate an MEA (maximum expected accuracy) structure,\
    \ where the expected accuracy is computed from the pair probabilities: each base\
    \ pair (i,j) gets a score 2*gamma*p_ij and the score of an unpaired base is given\
    \ by the probability of not forming a pair. (default=`1.')"
  id: me_a
  inputBinding:
    prefix: --MEA
  type: boolean
- doc: Assume a circular (instead of linear) RNA molecule. (default=off)
  id: circ
  inputBinding:
    prefix: --circ
  type: boolean
- doc: Incoorporate G-Quadruplex formation into the structure prediction algorithm.
    (default=off)
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
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
