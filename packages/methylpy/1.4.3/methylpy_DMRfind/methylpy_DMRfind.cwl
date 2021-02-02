class: CommandLineTool
id: methylpy_DMRfind.cwl
inputs:
- id: in_output_prefix
  doc: "[--samples SAMPLES [SAMPLES ...]]\n[--chroms CHROMS [CHROMS ...]]\n[--mc-type\
    \ MC_TYPE [MC_TYPE ...]]\n[--num-procs NUM_PROCS] [--min-cov MIN_COV]\n[--dmr-max-dist\
    \ DMR_MAX_DIST]\n[--sig-cutoff SIG_CUTOFF] [--num-sims NUM_SIMS]\n[--min-tests\
    \ MIN_TESTS] [--min-num-dms MIN_NUM_DMS]\n[--sample-category SAMPLE_CATEGORY [SAMPLE_CATEGORY\
    \ ...]]\n[--mc-max-dist MC_MAX_DIST]\n[--resid-cutoff RESID_CUTOFF]\n[--keep-temp-files\
    \ KEEP_TEMP_FILES]\n[--min-cluster MIN_CLUSTER] [--seed SEED]"
  type: long
  inputBinding:
    prefix: --output-prefix
- id: in_all_c_files
  doc: 'List of allc files. (default: None)'
  type: string[]
  inputBinding:
    prefix: --allc-files
- id: in_samples
  doc: "List of space separated samples matching allc files.\nBy default sample names\
    \ will be inferred from allc\nfilenames (default: None)"
  type: string[]
  inputBinding:
    prefix: --samples
- id: in_chrom_s
  doc: "Space separated listing of chromosomes where DMRs will\nbe called. If not\
    \ specified, DMRs will be called\nacross the chromosomes/contigs that contained\
    \ any data\nin all allc files. (default: None)"
  type: string[]
  inputBinding:
    prefix: --chroms
- id: in_mc_type
  doc: "List of space separated mc nucleotide contexts for\nwhich you want to look\
    \ for DMRs. These classifications\nmay use the wildcards H (indicating anything\
    \ but a G)\nand N (indicating any nucleotide). (default: ['CGN'])"
  type: string[]
  inputBinding:
    prefix: --mc-type
- id: in_num_procs
  doc: "Number of processors you wish to use to parallelize\nthis function (default:\
    \ 1)"
  type: long
  inputBinding:
    prefix: --num-procs
- id: in_min_cov
  doc: "Minimum number of reads that must cover a site for it\nto be considered. (default:\
    \ 0)"
  type: long
  inputBinding:
    prefix: --min-cov
- id: in_dmr_max_dist
  doc: "Maximum distance two significant sites can be to be\nincluded in the same\
    \ block. (default: 250)"
  type: long
  inputBinding:
    prefix: --dmr-max-dist
- id: in_sig_cut_off
  doc: "Float indicating at what FDR you want to consider a\nresult significant. (default:\
    \ 0.01)"
  type: double
  inputBinding:
    prefix: --sig-cutoff
- id: in_num_sims
  doc: "Number of permutation tests you would like to run to\nestimate the p-values\
    \ of the differential methylation\ntests (default: 3000)"
  type: long
  inputBinding:
    prefix: --num-sims
- id: in_min_tests
  doc: "Minimum number of permuation tests you\\ would d like\nto run for each mC\
    \ (default: 100)"
  type: long
  inputBinding:
    prefix: --min-tests
- id: in_min_num_dms
  doc: "The minimum number of differentially methylated sites\nthat a differentially\
    \ methylated region needs to\ncontain to be reported (default: 0)"
  type: long
  inputBinding:
    prefix: --min-num-dms
- id: in_sample_category
  doc: "A list of categories that each respective sample\nbelongs to; the categories\
    \ must begin at 0 and\nincrease by 1 for each category added. ex: samples\n[A,B,C]\
    \ categories [0,1,2] or categories [0, 1, 0]\n(default: False)"
  type: string[]
  inputBinding:
    prefix: --sample-category
- id: in_mc_max_dist
  doc: "Integer indicating the maximum distance two sites can\nbe from one another\
    \ for their methylation counts to be\ncombined. This option helps with low coverage\n\
    experiments where you may want to leverage the\ncorrelation of methylation between\
    \ sites to get more\nstatistical power. (default: 0)"
  type: long
  inputBinding:
    prefix: --mc-max-dist
- id: in_resid_cut_off
  doc: "Results will have to show deviations in the\ncontingency table in the same\
    \ direction as the rest of\nthe window (default: 0.01)"
  type: double
  inputBinding:
    prefix: --resid-cutoff
- id: in_keep_temp_files
  doc: "Boolean indicating that you would like to keep the\nintermediate files generated\
    \ by this function. This\ncan be useful for debugging, but in general should be\n\
    left False. (default: False)"
  type: boolean
  inputBinding:
    prefix: --keep-temp-files
- id: in_min_cluster
  doc: "The minimum number of each sample category that must\nbe present in every\
    \ block that is output. (default: 2)"
  type: long
  inputBinding:
    prefix: --min-cluster
- id: in_seed
  doc: "A seed to provide to the random number generator for\npermutation testing.\
    \ Only change this if you are\ndebugging and want to make sure the permutation\
    \ output\nis consistent (default: -1)\n"
  type: long
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- methylpy
- DMRfind
