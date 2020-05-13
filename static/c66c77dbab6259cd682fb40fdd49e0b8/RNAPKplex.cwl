class: CommandLineTool
id: RNAPKplex.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden  options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: cut_off
  doc: Report only base pairs with an average probability  > cutoff in the dot plot
    (default=`0.01')
  type: double
  inputBinding:
    prefix: --cutoff
- id: temp
  doc: Rescale energy parameters to a temperature of temp  C. Default is 37C.
  type: string
  inputBinding:
    prefix: --temp
- id: no_lp
  doc: Produce structures without lonely pairs (helices  of length 1). (default=off)
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
- id: noconv
  doc: Do not automatically substitude nucleotide "T"  with "U" (default=off)
  type: boolean
  inputBinding:
    prefix: --noconv
- id: nsp
  doc: Allow other pairs in addition to the usual  AU,GC,and GU pairs. (default=`empty')
  type: string
  inputBinding:
    prefix: --nsp
- id: energy_cut_off
  doc: Energy cutoff or pseudoknot initiation cost.  Minimum energy gain of a pseudoknot
    interaction  for it to be returned. Pseudoknots with smaller  energy gains are
    rejected. (default=`-810')
  type: long
  inputBinding:
    prefix: --energyCutoff
- id: param_file
  doc: Read energy parameters from paramfile, instead of  using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
- id: verbose
  doc: print verbose output (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: sub_opts
  doc: print suboptimal structures whose energy  difference of the pseudoknot to the
    optimum  pseudoknot is smaller than the given value. (default=`0')
  type: long
  inputBinding:
    prefix: --subopts
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAPKplex
