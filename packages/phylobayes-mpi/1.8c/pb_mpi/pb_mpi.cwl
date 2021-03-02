class: CommandLineTool
id: pb_mpi.cwl
inputs:
- id: in_cat
  doc: ': infinite mixture (Dirichlet process) of equilibirium frequency profiles'
  type: boolean?
  inputBinding:
    prefix: -cat
- id: in_nc_at
  doc: ': finite mixture of equilibirium frequency profiles'
  type: string?
  inputBinding:
    prefix: -ncat
- id: in_cat_fix
  doc: ': specifying a fixed pre-defined mixture of profiles'
  type: string?
  inputBinding:
    prefix: -catfix
- id: in_lg
  doc: ': Le and Gascuel 2008'
  type: boolean?
  inputBinding:
    prefix: -lg
- id: in_wag
  doc: ': Whelan and Goldman 2001'
  type: boolean?
  inputBinding:
    prefix: -wag
- id: in_jtt
  doc: ': Jones, Taylor, Thornton 1992'
  type: boolean?
  inputBinding:
    prefix: -jtt
- id: in_gtr
  doc: ': general time reversible'
  type: boolean?
  inputBinding:
    prefix: -gtr
- id: in_poisson
  doc: ': Poisson matrix, all relative exchangeabilities equal to 1 (Felsenstein 1981)'
  type: boolean?
  inputBinding:
    prefix: -poisson
- id: in_dg_am
  doc: ': discrete gamma. ncat = number of categories (4 by default, 1 = uniform rates
    model)'
  type: long?
  inputBinding:
    prefix: -dgam
- id: in_dc
  doc: ': excludes constant columns'
  type: boolean?
  inputBinding:
    prefix: -dc
- id: in_starts_specified_tree
  doc: ': starts from specified tree'
  type: File?
  inputBinding:
    prefix: -t
- id: in_chain_run_fixed
  doc: ': chain run under fixed, specified tree'
  type: File?
  inputBinding:
    prefix: -T
- id: in_saving_frequency_length
  doc: '<until>  : saving frequency, and chain length (until = -1 : forever)'
  type: long?
  inputBinding:
    prefix: -x
- id: in__forcing_checks
  doc: ': forcing checks'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_save_s_save
  doc: ': -s : save all / -S : save only the trees'
  type: boolean?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylobayes-mpi:1.8c--h78e549b_0
cwlVersion: v1.1
baseCommand:
- pb_mpi
