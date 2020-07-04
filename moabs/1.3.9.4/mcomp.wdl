version 1.0

task Mcomp {
  input {
    String? do_dmcs_can
    String? dod_mrs_can
    String? filter_credible_dif
    String? dmr_methods
    String? pf_et_dmc
    String? pf_et_dmr
    String? min_nominal_dif
    String? p_sim_dmc
    String? psi_md_mr
    String? m_incredible_dif
    String? toprank_by_cd_if
    String? toprank_by_psi_m
    String? mind_mcs_in_dmr
    String? max_dist_cons_dmcs
    Boolean? arg_supply_bed
  }
  command <<<
    mcomp \
      ~{if defined(do_dmcs_can) then ("--doDmcScan " +  '"' + do_dmcs_can + '"') else ""} \
      ~{if defined(dod_mrs_can) then ("--doDmrScan " +  '"' + dod_mrs_can + '"') else ""} \
      ~{if defined(filter_credible_dif) then ("--filterCredibleDif " +  '"' + filter_credible_dif + '"') else ""} \
      ~{if defined(dmr_methods) then ("--dmrMethods " +  '"' + dmr_methods + '"') else ""} \
      ~{if defined(pf_et_dmc) then ("--pFetDmc " +  '"' + pf_et_dmc + '"') else ""} \
      ~{if defined(pf_et_dmr) then ("--pFetDmr " +  '"' + pf_et_dmr + '"') else ""} \
      ~{if defined(min_nominal_dif) then ("--minNominalDif " +  '"' + min_nominal_dif + '"') else ""} \
      ~{if defined(p_sim_dmc) then ("--pSimDmc " +  '"' + p_sim_dmc + '"') else ""} \
      ~{if defined(psi_md_mr) then ("--pSimDmr " +  '"' + psi_md_mr + '"') else ""} \
      ~{if defined(m_incredible_dif) then ("--minCredibleDif " +  '"' + m_incredible_dif + '"') else ""} \
      ~{if defined(toprank_by_cd_if) then ("--topRankByCDif " +  '"' + toprank_by_cd_if + '"') else ""} \
      ~{if defined(toprank_by_psi_m) then ("--topRankByPSim " +  '"' + toprank_by_psi_m + '"') else ""} \
      ~{if defined(mind_mcs_in_dmr) then ("--minDmcsInDmr " +  '"' + mind_mcs_in_dmr + '"') else ""} \
      ~{if defined(max_dist_cons_dmcs) then ("--maxDistConsDmcs " +  '"' + max_dist_cons_dmcs + '"') else ""} \
      ~{true="-f" false="" arg_supply_bed}
  >>>
  parameter_meta {
    do_dmcs_can: "(=1)              doDmcScan;"
    dod_mrs_can: "(=1)              doDmrScan;"
    filter_credible_dif: "(=-10)    if absolute value of cDif for a site <  filterCredibleDif, then this site is  ignored for regional calculation. use  0.01(for example) to filter all sites with  no difference; use 0.20(for example) to  select DMCs; Any negative number = no  filter;"
    dmr_methods: "(=7)             dmrMethods: add 2^x  method x; examples: 7  for three methods, 4 for method 3 only;"
    pf_et_dmc: "(=0.05)             Cutoff of P value from Fisher Exact Test  for Dmc scan;"
    pf_et_dmr: "(=0.05)             Cutoff of P value from Fisher Exact Test  for Dmr scan;"
    min_nominal_dif: "(=0.3333)     min nominal meth diff for Dmc Dmr;"
    p_sim_dmc: "(=1.0)              Cutoff P value from Similarity Test for Dmc scan; Since p is alwasys less than 1,  default 1 means not a criteria;"
    psi_md_mr: "(=1.0)              Cutoff P value from Simlarity Test for Dmr  scan;"
    m_incredible_dif: "(=0.2)       min credible meth diff for Dmc calling,  used in M2 or predefined regions;"
    toprank_by_cd_if: "(=1.0)        filter Dmc by asking it to be in top  (default 100%) percent by ranking absolute  value of credibleDif; suggest 0.05 as the  only condition to call Dmc if cDif  condition is not prefered; The cutoff cDif  will be used as Dmr criteria;"
    toprank_by_psi_m: "(=1.0)        filter Dmc by asking it to be in top  (default 100%) percent by ranking P value  from Similarity Test;"
    mind_mcs_in_dmr: "(=3)           minimum number of Dmcs in a Dmr;"
    max_dist_cons_dmcs: "(=300)      max distance between two consective Dmcs  for them to be considered in a Dmr;"
    arg_supply_bed: "[ --predefinedFeature ] arg    supply bed files as predefined feature; -f  promoter.bed -f CpgIsland.bed -f LINE.bed  is same as -f promoter.bed,CpgIsland.bed,Li ne.bed"
  }
}