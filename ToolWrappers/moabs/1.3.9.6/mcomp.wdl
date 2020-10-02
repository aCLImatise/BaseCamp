version 1.0

task Mcomp {
  input {
    String? email
    Boolean? arg_specify_names
    Boolean? arg__ratiosfiles
    Boolean? arg_name_labels
    Directory? output_dir
    Directory? web_output_dir
    Boolean? arg_name_comparison
    String? in_genome
    File? reference
    Float? precision
    Boolean? arg_specify_number
    Int? lmf_it
    Int? merge_not_intersect
    Int? with_variance
    Int? do_merge_ratio_files
    Int? do_strand_specifi_meth
    Boolean? arg_site_depth
    Int? filter_credible_dif
    Int? dmr_methods
    Float? pf_et_dmc
    Float? pf_et_dmr
    Int? min_nominal_dif
    Float? p_sim_dmc
    Float? psi_md_mr
    Int? m_incredible_dif
    Float? toprank_by_cd_if
    Float? toprank_by_psi_m
    Int? mind_mcs_in_dmr
    Int? max_dist_cons_dmcs
    Boolean? arg_supply_bed
  }
  command <<<
    mcomp \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if (arg_specify_names) then "-r" else ""} \
      ~{if (arg__ratiosfiles) then "-m" else ""} \
      ~{if (arg_name_labels) then "-l" else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(web_output_dir) then ("--webOutputDir " +  '"' + web_output_dir + '"') else ""} \
      ~{if (arg_name_comparison) then "-c" else ""} \
      ~{if defined(in_genome) then ("--inGenome " +  '"' + in_genome + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if (arg_specify_number) then "-p" else ""} \
      ~{if defined(lmf_it) then ("--lmFit " +  '"' + lmf_it + '"') else ""} \
      ~{if defined(merge_not_intersect) then ("--mergeNotIntersect " +  '"' + merge_not_intersect + '"') else ""} \
      ~{if defined(with_variance) then ("--withVariance " +  '"' + with_variance + '"') else ""} \
      ~{if defined(do_merge_ratio_files) then ("--doMergeRatioFiles " +  '"' + do_merge_ratio_files + '"') else ""} \
      ~{if defined(do_strand_specifi_meth) then ("--doStrandSpecifiMeth " +  '"' + do_strand_specifi_meth + '"') else ""} \
      ~{if (arg_site_depth) then "-d" else ""} \
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
      ~{if (arg_supply_bed) then "-f" else ""}
  >>>
  parameter_meta {
    email: "Specify email;"
    arg_specify_names: "[ --ratiosFiles ] arg          Specify the names of ratio files from\\nmethCall. Multiple lane files can be\\nseparated by , to be combined into a single\\ntrack; example: -r sample1 -r sample2 -r\\ns_r1,s_r2,s_r3;"
    arg__ratiosfiles: "[ --mergedRatiosFiles ] arg    If --ratiosFiles is ',' separated, then\\nthis option must be set;"
    arg_name_labels: "[ --labels ] arg               Name labels for samples, defaut 0, 1, ...;"
    output_dir: "Specify the name of the output directory;"
    web_output_dir: "Specify the name of the web-accessible\\noutput directory for UCSC Genome Browser\\ntracks;"
    arg_name_comparison: "[ --compFile ] arg             Name of the comparison file resulted from\\nstatistical tests;"
    in_genome: "Specify the UCSC Genome Browser identifier\\nof source genome assembly;"
    reference: "Specify the path to the reference genome\\nfor example mm9.fa; mm9.chrom.sizes must be\\nin the same dir;"
    precision: "(=3)              Specify the precision of float numbers in\\noutput files (default: 3);"
    arg_specify_number: "[ --threads ] arg (=6)         Specify number of threads; suggest number\\n6-12; default 6;"
    lmf_it: "(=1)                  Specify if lenear model fitting is\\nperformed; default true; Note that 'na' is\\ngenerated if slope is 0;"
    merge_not_intersect: "(=1)      Specify if genomic locations are merged or\\nintersected among samples; 1 for\\nmerge(default) and 0 for intersect;"
    with_variance: "(=0)           Specify if there's individual biological\\nvariance among the same condition; default\\n0; Should be 0 for most animal models 1 for\\nmost patient studies; WithVariance=1 is not\\neffective if only 1 or 2 replicates."
    do_merge_ratio_files: "(=0)      Internal parameter. Is true when -m\\nparameter is ',' separated and program will\\nmerge ratio Files that are separated by ','\\nand the output files are named according to\\noption -x;"
    do_strand_specifi_meth: "(=0)    whether strand specific methylation\\nanalysis will be performed;"
    arg_site_depth: "[ --minDepthForComp ] arg (=3) If a site has depth < d then this site is\\nignored for statistical tests; This option\\naffects much of nominal ratios but none of\\ncredible ratios; Suggest 10 for method 2\\nand 3 for method 2; You may also reset this\\noption during later DMC/DMR rescan to\\nfilter sites with depth < d;"
    filter_credible_dif: "(=-10)    if absolute value of cDif for a site <\\nfilterCredibleDif, then this site is\\nignored for regional calculation. use\\n0.01(for example) to filter all sites with\\nno difference; use 0.20(for example) to\\nselect DMCs; Any negative number = no\\nfilter;"
    dmr_methods: "(=7)             dmrMethods: add 2^x  method x; examples: 7\\nfor three methods, 4 for method 3 only;"
    pf_et_dmc: "(=0.05)             Cutoff of P value from Fisher Exact Test\\nfor Dmc scan;"
    pf_et_dmr: "(=0.05)             Cutoff of P value from Fisher Exact Test\\nfor Dmr scan;"
    min_nominal_dif: "(=0.3333)     min nominal meth diff for Dmc Dmr;"
    p_sim_dmc: "(=1.0)              Cutoff P value from Similarity Test for Dmc\\nscan; Since p is alwasys less than 1,\\ndefault 1 means not a criteria;"
    psi_md_mr: "(=1.0)              Cutoff P value from Simlarity Test for Dmr\\nscan;"
    m_incredible_dif: "(=0.2)       min credible meth diff for Dmc calling,\\nused in M2 or predefined regions;"
    toprank_by_cd_if: "(=1.0)        filter Dmc by asking it to be in top\\n(default 100%) percent by ranking absolute\\nvalue of credibleDif; suggest 0.05 as the\\nonly condition to call Dmc if cDif\\ncondition is not prefered; The cutoff cDif\\nwill be used as Dmr criteria;"
    toprank_by_psi_m: "(=1.0)        filter Dmc by asking it to be in top\\n(default 100%) percent by ranking P value\\nfrom Similarity Test;"
    mind_mcs_in_dmr: "(=3)           minimum number of Dmcs in a Dmr;"
    max_dist_cons_dmcs: "(=300)      max distance between two consective Dmcs\\nfor them to be considered in a Dmr;"
    arg_supply_bed: "[ --predefinedFeature ] arg    supply bed files as predefined feature; -f\\npromoter.bed -f CpgIsland.bed -f LINE.bed\\nis same as -f promoter.bed,CpgIsland.bed,Li\\nne.bed\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    Directory out_web_output_dir = "${in_web_output_dir}"
  }
}