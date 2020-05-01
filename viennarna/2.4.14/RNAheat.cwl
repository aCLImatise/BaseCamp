#!/usr/bin/env cwl-runner

baseCommand:
- RNAheat
class: CommandLineTool
cwlVersion: v1.0
id: rnaheat
inputs:
- doc: --Tmin=t1              Lowest temperature (default=`0') --Tmax=t2              Highest
    temperature (default=`100') --stepsize=FLOAT       Calculate partition function
    every stepsize degrees C (default=`1.')
  id: program
  inputBinding:
    position: 0
  type: string
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
- doc: The program fits a parabola to 2*ipoints+1 data points to calculate 2nd derivatives.
    Increasing this parameter produces a smoother curve (default=`2')
  id: i_points
  inputBinding:
    prefix: --ipoints
  type: string
- doc: Do not automatically substitude nucleotide "T" with "U" (default=off)
  id: noconv
  inputBinding:
    prefix: --noconv
  type: boolean
- doc: "[=number]        Split batch input into jobs and start processing in parallel\
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
- doc: Incoorporate G-Quadruplex formation into the structure prediction algorithm.
    (default=off)
  id: g_quad
  inputBinding:
    prefix: --gquad
  type: boolean
- doc: Assume a circular (instead of linear) RNA molecule. (default=off)
  id: circ
  inputBinding:
    prefix: --circ
  type: boolean
