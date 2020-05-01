#!/usr/bin/env cwl-runner

baseCommand:
- RNAlocmin
class: CommandLineTool
cwlVersion: v1.0
id: rnalocmin
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
- doc: Sequence file in FASTA format. If the sequence is the first line of the input
    file, this is not needed  (default=`seq.txt')
  id: seq
  inputBinding:
    prefix: --seq
  type: string
- doc: Previously found LM (output from RNAlocmin or barriers), if specified does
    not need --seq option
  id: previous
  inputBinding:
    prefix: --previous
  type: string
- doc: "Move set: I ==> insertion & deletion of base pairs S ==> I&D& switch of base\
    \ pairs  (possible values=\"I\", \"S\" default=`I')"
  id: move
  inputBinding:
    prefix: --move
  type: string
- doc: Maximal number of local minima returned (0 == unlimited)  (default=`100000')
  id: min_num
  inputBinding:
    prefix: --min-num
  type: long
- doc: Maximal number of local minima found (default = unlimited - crawl through whole
    input file)
  id: find_num
  inputBinding:
    prefix: --find-num
  type: long
- doc: "Level of verbosity (0 = nothing, 4 = full) WARNING: higher verbose levels\
    \ increase the computation time  (default=`0')"
  id: verbose_lvl
  inputBinding:
    prefix: --verbose-lvl
  type: long
- doc: Depth of findpath search (higher value increases running time linearly)  (default=`10')
  id: depth
  inputBinding:
    prefix: --depth
  type: long
- doc: Print only minima with energy barrier greater than this  (default=`0.0')
  id: minh
  inputBinding:
    prefix: --minh
  type: string
- doc: Walking method used D ==> gradient descent F ==> use first found lower energy
    structure R ==> use random lower energy structure (does not work with --noLP and
    -m S options) (possible values="D", "F", "R" default=`D')
  id: walk
  inputBinding:
    prefix: --walk
  type: string
- doc: Work only with canonical RNA structures (w/o isolated base pairs, cannot be
    combined with ranodm walk (-w R option) and shift move set (-m S))  (default=off)
  id: no_lp
  inputBinding:
    prefix: --noLP
  type: boolean
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
- doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  id: dangles
  inputBinding:
    prefix: --dangles
  type: long
- doc: Allow for pseudoknots according to "gfold" model - H, K, L, and M types (genus
    one) of pseudoknots are allowed (increases computation time greatly), cannot be
    combined with shift move set (-m S)  (default=off)
  id: pseudo_knots
  inputBinding:
    prefix: --pseudoknots
  type: boolean
- doc: Do not expect input from stdin, just do postprocessing.  (default=off)
  id: just_read
  inputBinding:
    prefix: --just-read
  type: boolean
- doc: Use the Neighborhood routines to perform gradient descend. Cannot be combined
    with shift move set (-m S) and pseudoknots (-k). Test option. (default=off)
  id: neighborhood
  inputBinding:
    prefix: --neighborhood
  type: boolean
- doc: Do not deal with degeneracy, select the lexicographically first from the same
    energy neighbors.  (default=off)
  id: degeneracy_off
  inputBinding:
    prefix: --degeneracy-off
  type: boolean
- doc: Do not store the minima and optimize, just compute directly minima and output
    them. Output file can contain duplicates.  (default=off)
  id: just_output
  inputBinding:
    prefix: --just-output
  type: boolean
- doc: Generate an approximate barrier tree. (default=off)
  id: bar_tree
  inputBinding:
    prefix: --bartree
  type: boolean
- doc: Name of barrier tree output file, switches on -b flag.  (default=`treeRNAloc.ps')
  id: barr_name
  inputBinding:
    prefix: --barr-name
  type: string
- doc: File for saddle heights between LM (simulates the output format of barriers
    program)
  id: barrier_file
  inputBinding:
    prefix: --barrier-file
  type: string
- doc: Create rates for treekin  (default=off)
  id: rates
  inputBinding:
    prefix: --rates
  type: boolean
- doc: File where to write rates, switches on -r flag (default=`rates.out')
  id: rates_file
  inputBinding:
    prefix: --rates-file
  type: string
- doc: Temperature in Celsius (only for rates) (default=`37.0')
  id: temp
  inputBinding:
    prefix: --temp
  type: string
- doc: Fraction of minima to flood (floods first minima with low number of inwalking
    sample structures) (0.0 -> no flood; 1.0 -> try to flood all) Usable only with
    -r or -b options. (default=`0.95')
  id: flood_portion
  inputBinding:
    prefix: --floodPortion
  type: string
- doc: Flood cap - how many structures to flood in one basin  (default=`1000')
  id: flood_max
  inputBinding:
    prefix: --floodMax
  type: long
- doc: Report only LM, which energy is in range <MFE (or lowest found LM), MFE+eRange>
    in kcal/mol.
  id: e_range
  inputBinding:
    prefix: --eRange
  type: double
