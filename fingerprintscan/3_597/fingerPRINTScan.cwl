#!/usr/bin/env cwl-runner

baseCommand:
- fingerPRINTScan
class: CommandLineTool
cwlVersion: v1.0
id: fingerprintscan
inputs:
- doc: 'Calculate consensus sequences for the Alignment view (Table 4) [EXPERIMENTAL] '
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: Set database format to .profile format (Default)
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: 'Output the .profile format of the database The syntax of this command is different
    to all other commands. being:  fingerPRINTScan -C prints.dat > prints.pval or:     fingerPRINTScan
    -Cb blocks.dat > blocks.pval'
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: '# Percentage allowed distance deviation between motifs. (where # is a number
    in the range 0 .. 100) (0 is a special case which turns off distance checking)'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '# E-value threshold. (where # is a floating point number)'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '#1 #2  E-value calculation parameters. (where #1 is the number of sequences
    in the primary database (default 80000)) (where #2 is the number of resides   in
    the primary database (default 2.96103e+07)) ( the default values are based on
    SWISS-PROT 38)'
  id: e
  inputBinding:
    prefix: -E
  type: boolean
- doc: Explicitly state the format of the provided sequence is in the fasta format
    (Currently default)
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Explicitly state the format of the provided sequence is the PRINTS in house
    format (Now defunct)
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: Set options to produce output compatable with the GRAPHScan program
  id: g
  inputBinding:
    prefix: -G
  type: boolean
- doc: Set the scoring matrix (62 (default), 45 or 80) (This only makes any difference
    when creating the .pval database)
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: 'Use E=p.D calculation method '
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: Use the conventional database format (Slow when computing pvals)
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '#  (where # = a decimal number corresponding to the type of output required,
    this number corresponds to the number of bits turned on in the following matrix)
    TableNo  4 3 2 1 BitValue 1 2 4 8 Eg.      0 0 1 1 = 4+8 = 12, which will switch
    on  tables 1 and 2 in the output Table 1 = shortest description of the results,
    only the top scoring hits Table 2 = medium description of the results, the ten
    top scoring hits detailed by fingerprint Table 3 = most detailed description of
    the results, the ten top scoring hits, detailed by individual motif Table 4 =
    EXPERIMENTAL alignment of the sequence and the  consensus sequence of the motif.
    (-a flag needs to be on too)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: Restrict all results in all tables to those which score below the Evalue threshold.
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: select the random ShuffleFlag option (which ShuffleFlags all sequences)
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '# Specify the Profile score threshold (where # is a positive integer (default=
    15))'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: Output the GNU licence
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: '# Specify the P-value score threshold  (where # is a positive integer representing
    the negative power to which 10 is raised)'
  id: x
  inputBinding:
    prefix: -x
  type: boolean
