class: CommandLineTool
id: mcomp.cwl
inputs:
- id: do_dmcs_can
  doc: (=1)              doDmcScan;
  type: string
  inputBinding:
    prefix: --doDmcScan
- id: dod_mrs_can
  doc: (=1)              doDmrScan;
  type: string
  inputBinding:
    prefix: --doDmrScan
- id: filter_credible_dif
  doc: (=-10)    if absolute value of cDif for a site <  filterCredibleDif, then this
    site is  ignored for regional calculation. use  0.01(for example) to filter all
    sites with  no difference; use 0.20(for example) to  select DMCs; Any negative
    number = no  filter;
  type: string
  inputBinding:
    prefix: --filterCredibleDif
- id: dmr_methods
  doc: '(=7)             dmrMethods: add 2^x  method x; examples: 7  for three methods,
    4 for method 3 only;'
  type: string
  inputBinding:
    prefix: --dmrMethods
- id: pf_et_dmc
  doc: (=0.05)             Cutoff of P value from Fisher Exact Test  for Dmc scan;
  type: string
  inputBinding:
    prefix: --pFetDmc
- id: pf_et_dmr
  doc: (=0.05)             Cutoff of P value from Fisher Exact Test  for Dmr scan;
  type: string
  inputBinding:
    prefix: --pFetDmr
- id: min_nominal_dif
  doc: (=0.3333)     min nominal meth diff for Dmc Dmr;
  type: string
  inputBinding:
    prefix: --minNominalDif
- id: p_sim_dmc
  doc: (=1.0)              Cutoff P value from Similarity Test for Dmc scan; Since
    p is alwasys less than 1,  default 1 means not a criteria;
  type: string
  inputBinding:
    prefix: --pSimDmc
- id: psi_md_mr
  doc: (=1.0)              Cutoff P value from Simlarity Test for Dmr  scan;
  type: string
  inputBinding:
    prefix: --pSimDmr
- id: m_incredible_dif
  doc: (=0.2)       min credible meth diff for Dmc calling,  used in M2 or predefined
    regions;
  type: string
  inputBinding:
    prefix: --minCredibleDif
- id: toprank_by_cd_if
  doc: (=1.0)        filter Dmc by asking it to be in top  (default 100%) percent
    by ranking absolute  value of credibleDif; suggest 0.05 as the  only condition
    to call Dmc if cDif  condition is not prefered; The cutoff cDif  will be used
    as Dmr criteria;
  type: string
  inputBinding:
    prefix: --topRankByCDif
- id: toprank_by_psi_m
  doc: (=1.0)        filter Dmc by asking it to be in top  (default 100%) percent
    by ranking P value  from Similarity Test;
  type: string
  inputBinding:
    prefix: --topRankByPSim
- id: mind_mcs_in_dmr
  doc: (=3)           minimum number of Dmcs in a Dmr;
  type: string
  inputBinding:
    prefix: --minDmcsInDmr
- id: max_dist_cons_dmcs
  doc: (=300)      max distance between two consective Dmcs  for them to be considered
    in a Dmr;
  type: string
  inputBinding:
    prefix: --maxDistConsDmcs
- id: f
  doc: '[ --predefinedFeature ] arg    supply bed files as predefined feature; -f  promoter.bed
    -f CpgIsland.bed -f LINE.bed  is same as -f promoter.bed,CpgIsland.bed,Li ne.bed'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- mcomp
