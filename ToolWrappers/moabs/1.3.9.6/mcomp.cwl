class: CommandLineTool
id: mcomp.cwl
inputs:
- id: in_email
  doc: Specify email;
  type: string
  inputBinding:
    prefix: --email
- id: in_arg_specify_names
  doc: "[ --ratiosFiles ] arg          Specify the names of ratio files from\nmethCall.\
    \ Multiple lane files can be\nseparated by , to be combined into a single\ntrack;\
    \ example: -r sample1 -r sample2 -r\ns_r1,s_r2,s_r3;"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg__ratiosfiles
  doc: "[ --mergedRatiosFiles ] arg    If --ratiosFiles is ',' separated, then\nthis\
    \ option must be set;"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_name_labels
  doc: '[ --labels ] arg               Name labels for samples, defaut 0, 1, ...;'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_output_dir
  doc: Specify the name of the output directory;
  type: Directory
  inputBinding:
    prefix: --outputDir
- id: in_web_output_dir
  doc: "Specify the name of the web-accessible\noutput directory for UCSC Genome Browser\n\
    tracks;"
  type: Directory
  inputBinding:
    prefix: --webOutputDir
- id: in_arg_name_comparison
  doc: "[ --compFile ] arg             Name of the comparison file resulted from\n\
    statistical tests;"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_in_genome
  doc: "Specify the UCSC Genome Browser identifier\nof source genome assembly;"
  type: string
  inputBinding:
    prefix: --inGenome
- id: in_reference
  doc: "Specify the path to the reference genome\nfor example mm9.fa; mm9.chrom.sizes\
    \ must be\nin the same dir;"
  type: File
  inputBinding:
    prefix: --reference
- id: in_precision
  doc: "(=3)              Specify the precision of float numbers in\noutput files\
    \ (default: 3);"
  type: double
  inputBinding:
    prefix: --precision
- id: in_arg_specify_number
  doc: "[ --threads ] arg (=6)         Specify number of threads; suggest number\n\
    6-12; default 6;"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_lmf_it
  doc: "(=1)                  Specify if lenear model fitting is\nperformed; default\
    \ true; Note that 'na' is\ngenerated if slope is 0;"
  type: long
  inputBinding:
    prefix: --lmFit
- id: in_merge_not_intersect
  doc: "(=1)      Specify if genomic locations are merged or\nintersected among samples;\
    \ 1 for\nmerge(default) and 0 for intersect;"
  type: long
  inputBinding:
    prefix: --mergeNotIntersect
- id: in_with_variance
  doc: "(=0)           Specify if there's individual biological\nvariance among the\
    \ same condition; default\n0; Should be 0 for most animal models 1 for\nmost patient\
    \ studies; WithVariance=1 is not\neffective if only 1 or 2 replicates."
  type: long
  inputBinding:
    prefix: --withVariance
- id: in_do_merge_ratio_files
  doc: "(=0)      Internal parameter. Is true when -m\nparameter is ',' separated\
    \ and program will\nmerge ratio Files that are separated by ','\nand the output\
    \ files are named according to\noption -x;"
  type: long
  inputBinding:
    prefix: --doMergeRatioFiles
- id: in_do_strand_specifi_meth
  doc: "(=0)    whether strand specific methylation\nanalysis will be performed;"
  type: long
  inputBinding:
    prefix: --doStrandSpecifiMeth
- id: in_arg_site_depth
  doc: "[ --minDepthForComp ] arg (=3) If a site has depth < d then this site is\n\
    ignored for statistical tests; This option\naffects much of nominal ratios but\
    \ none of\ncredible ratios; Suggest 10 for method 2\nand 3 for method 2; You may\
    \ also reset this\noption during later DMC/DMR rescan to\nfilter sites with depth\
    \ < d;"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_filter_credible_dif
  doc: "(=-10)    if absolute value of cDif for a site <\nfilterCredibleDif, then\
    \ this site is\nignored for regional calculation. use\n0.01(for example) to filter\
    \ all sites with\nno difference; use 0.20(for example) to\nselect DMCs; Any negative\
    \ number = no\nfilter;"
  type: long
  inputBinding:
    prefix: --filterCredibleDif
- id: in_dmr_methods
  doc: "(=7)             dmrMethods: add 2^x  method x; examples: 7\nfor three methods,\
    \ 4 for method 3 only;"
  type: long
  inputBinding:
    prefix: --dmrMethods
- id: in_pf_et_dmc
  doc: "(=0.05)             Cutoff of P value from Fisher Exact Test\nfor Dmc scan;"
  type: double
  inputBinding:
    prefix: --pFetDmc
- id: in_pf_et_dmr
  doc: "(=0.05)             Cutoff of P value from Fisher Exact Test\nfor Dmr scan;"
  type: double
  inputBinding:
    prefix: --pFetDmr
- id: in_min_nominal_dif
  doc: (=0.3333)     min nominal meth diff for Dmc Dmr;
  type: long
  inputBinding:
    prefix: --minNominalDif
- id: in_p_sim_dmc
  doc: "(=1.0)              Cutoff P value from Similarity Test for Dmc\nscan; Since\
    \ p is alwasys less than 1,\ndefault 1 means not a criteria;"
  type: double
  inputBinding:
    prefix: --pSimDmc
- id: in_psi_md_mr
  doc: "(=1.0)              Cutoff P value from Simlarity Test for Dmr\nscan;"
  type: double
  inputBinding:
    prefix: --pSimDmr
- id: in_m_incredible_dif
  doc: "(=0.2)       min credible meth diff for Dmc calling,\nused in M2 or predefined\
    \ regions;"
  type: long
  inputBinding:
    prefix: --minCredibleDif
- id: in_toprank_by_cd_if
  doc: "(=1.0)        filter Dmc by asking it to be in top\n(default 100%) percent\
    \ by ranking absolute\nvalue of credibleDif; suggest 0.05 as the\nonly condition\
    \ to call Dmc if cDif\ncondition is not prefered; The cutoff cDif\nwill be used\
    \ as Dmr criteria;"
  type: double
  inputBinding:
    prefix: --topRankByCDif
- id: in_toprank_by_psi_m
  doc: "(=1.0)        filter Dmc by asking it to be in top\n(default 100%) percent\
    \ by ranking P value\nfrom Similarity Test;"
  type: double
  inputBinding:
    prefix: --topRankByPSim
- id: in_mind_mcs_in_dmr
  doc: (=3)           minimum number of Dmcs in a Dmr;
  type: long
  inputBinding:
    prefix: --minDmcsInDmr
- id: in_max_dist_cons_dmcs
  doc: "(=300)      max distance between two consective Dmcs\nfor them to be considered\
    \ in a Dmr;"
  type: long
  inputBinding:
    prefix: --maxDistConsDmcs
- id: in_arg_supply_bed
  doc: "[ --predefinedFeature ] arg    supply bed files as predefined feature; -f\n\
    promoter.bed -f CpgIsland.bed -f LINE.bed\nis same as -f promoter.bed,CpgIsland.bed,Li\n\
    ne.bed\n"
  type: boolean
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Specify the name of the output directory;
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_web_output_dir
  doc: "Specify the name of the web-accessible\noutput directory for UCSC Genome Browser\n\
    tracks;"
  type: Directory
  outputBinding:
    glob: $(inputs.in_web_output_dir)
cwlVersion: v1.1
baseCommand:
- mcomp
