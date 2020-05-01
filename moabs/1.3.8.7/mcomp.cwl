#!/usr/bin/env cwl-runner

baseCommand:
- mcomp
class: CommandLineTool
cwlVersion: v1.0
id: mcomp
inputs:
- doc: (=1)              doDmcScan;
  id: do_dmcs_can
  inputBinding:
    prefix: --doDmcScan
  type: string
- doc: (=1)              doDmrScan;
  id: dod_mrs_can
  inputBinding:
    prefix: --doDmrScan
  type: string
- doc: (=-10)    if absolute value of cDif for a site <  filterCredibleDif, then this
    site is  ignored for regional calculation. use  0.01(for example) to filter all
    sites with  no difference; use 0.20(for example) to  select DMCs; Any negative
    number = no  filter;
  id: filter_credible_dif
  inputBinding:
    prefix: --filterCredibleDif
  type: string
- doc: '(=7)             dmrMethods: add 2^x  method x; examples: 7  for three methods,
    4 for method 3 only;'
  id: dmr_methods
  inputBinding:
    prefix: --dmrMethods
  type: string
- doc: (=0.05)             Cutoff of P value from Fisher Exact Test  for Dmc scan;
  id: pf_et_dmc
  inputBinding:
    prefix: --pFetDmc
  type: string
- doc: (=0.05)             Cutoff of P value from Fisher Exact Test  for Dmr scan;
  id: pf_et_dmr
  inputBinding:
    prefix: --pFetDmr
  type: string
- doc: (=0.3333)     min nominal meth diff for Dmc Dmr;
  id: min_nominal_dif
  inputBinding:
    prefix: --minNominalDif
  type: string
- doc: (=1.0)              Cutoff P value from Similarity Test for Dmc scan; Since
    p is alwasys less than 1,  default 1 means not a criteria;
  id: p_sim_dmc
  inputBinding:
    prefix: --pSimDmc
  type: string
- doc: (=1.0)              Cutoff P value from Simlarity Test for Dmr  scan;
  id: psi_md_mr
  inputBinding:
    prefix: --pSimDmr
  type: string
- doc: (=0.2)       min credible meth diff for Dmc calling,  used in M2 or predefined
    regions;
  id: m_incredible_dif
  inputBinding:
    prefix: --minCredibleDif
  type: string
- doc: (=1.0)        filter Dmc by asking it to be in top  (default 100%) percent
    by ranking absolute  value of credibleDif; suggest 0.05 as the  only condition
    to call Dmc if cDif  condition is not prefered; The cutoff cDif  will be used
    as Dmr criteria;
  id: toprank_by_cd_if
  inputBinding:
    prefix: --topRankByCDif
  type: string
- doc: (=1.0)        filter Dmc by asking it to be in top  (default 100%) percent
    by ranking P value  from Similarity Test;
  id: toprank_by_psi_m
  inputBinding:
    prefix: --topRankByPSim
  type: string
- doc: (=3)           minimum number of Dmcs in a Dmr;
  id: mind_mcs_in_dmr
  inputBinding:
    prefix: --minDmcsInDmr
  type: string
- doc: (=300)      max distance between two consective Dmcs  for them to be considered
    in a Dmr;
  id: max_dist_cons_dmcs
  inputBinding:
    prefix: --maxDistConsDmcs
  type: string
- doc: '[ --predefinedFeature ] arg    supply bed files as predefined feature; -f  promoter.bed
    -f CpgIsland.bed -f LINE.bed  is same as -f promoter.bed,CpgIsland.bed,Li ne.bed'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
