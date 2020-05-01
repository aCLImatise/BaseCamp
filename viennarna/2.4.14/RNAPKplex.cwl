#!/usr/bin/env cwl-runner

baseCommand:
- RNAPKplex
class: CommandLineTool
cwlVersion: v1.0
id: rnapkplex
inputs:
- doc: Print help, including all details and hidden options, and exit
  id: detailed_help
  inputBinding:
    prefix: --detailed-help
  type: boolean
- doc: Report only base pairs with an average probability > cutoff in the dot plot
    (default=`0.01')
  id: cut_off
  inputBinding:
    prefix: --cutoff
  type: double
- doc: Rescale energy parameters to a temperature of temp C. Default is 37C.
  id: temp
  inputBinding:
    prefix: --temp
  type: string
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
- doc: Do not automatically substitude nucleotide "T" with "U" (default=off)
  id: noconv
  inputBinding:
    prefix: --noconv
  type: boolean
- doc: Allow other pairs in addition to the usual AU,GC,and GU pairs. (default=`empty')
  id: nsp
  inputBinding:
    prefix: --nsp
  type: string
- doc: Energy cutoff or pseudoknot initiation cost. Minimum energy gain of a pseudoknot
    interaction for it to be returned. Pseudoknots with smaller energy gains are rejected.
    (default=`-8.10')
  id: energy_cut_off
  inputBinding:
    prefix: --energyCutoff
  type: string
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
- doc: print verbose output (default=off)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: print suboptimal structures whose energy difference of the pseudoknot to the
    optimum pseudoknot is smaller than the given value. (default=`0.0')
  id: sub_opts
  inputBinding:
    prefix: --subopts
  type: string
