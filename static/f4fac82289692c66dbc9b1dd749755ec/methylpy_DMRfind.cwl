class: CommandLineTool
id: methylpy_DMRfind.cwl
inputs:
- id: all_c_files
  doc: 'List of allc files. (default: None)'
  type: string[]
  inputBinding:
    prefix: --allc-files
- id: output_prefix
  doc: 'String indicating the prefix for output files (default: None)'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: samples
  doc: 'List of space separated samples matching allc files. By default sample names
    will be inferred from allc filenames (default: None)'
  type: string[]
  inputBinding:
    prefix: --samples
- id: chrom_s
  doc: 'Space separated listing of chromosomes where DMRs will be called. If not specified,
    DMRs will be called across the chromosomes/contigs that contained any data in
    all allc files. (default: None)'
  type: string[]
  inputBinding:
    prefix: --chroms
- id: mc_type
  doc: "List of space separated mc nucleotide contexts for which you want to look\
    \ for DMRs. These classifications may use the wildcards H (indicating anything\
    \ but a G) and N (indicating any nucleotide). (default: ['CGN'])"
  type: string[]
  inputBinding:
    prefix: --mc-type
- id: num_procs
  doc: 'Number of processors you wish to use to parallelize this function (default:
    1)'
  type: string
  inputBinding:
    prefix: --num-procs
- id: min_cov
  doc: 'Minimum number of reads that must cover a site for it to be considered. (default:
    0)'
  type: long
  inputBinding:
    prefix: --min-cov
- id: dmr_max_dist
  doc: 'Maximum distance two significant sites can be to be included in the same block.
    (default: 250)'
  type: string
  inputBinding:
    prefix: --dmr-max-dist
- id: sig_cut_off
  doc: 'Float indicating at what FDR you want to consider a result significant. (default:
    0.01)'
  type: string
  inputBinding:
    prefix: --sig-cutoff
- id: num_sims
  doc: 'Number of permutation tests you would like to run to estimate the p-values
    of the differential methylation tests (default: 3000)'
  type: string
  inputBinding:
    prefix: --num-sims
- id: min_tests
  doc: 'Minimum number of permuation tests you\ would d like to run for each mC (default:
    100)'
  type: long
  inputBinding:
    prefix: --min-tests
- id: min_num_dms
  doc: 'The minimum number of differentially methylated sites that a differentially
    methylated region needs to contain to be reported (default: 0)'
  type: long
  inputBinding:
    prefix: --min-num-dms
- id: sample_category
  doc: 'A list of categories that each respective sample belongs to; the categories
    must begin at 0 and increase by 1 for each category added. ex: samples [A,B,C]
    categories [0,1,2] or categories [0, 1, 0] (default: False)'
  type: string[]
  inputBinding:
    prefix: --sample-category
- id: mc_max_dist
  doc: 'Integer indicating the maximum distance two sites can be from one another
    for their methylation counts to be combined. This option helps with low coverage
    experiments where you may want to leverage the correlation of methylation between
    sites to get more statistical power. (default: 0)'
  type: string
  inputBinding:
    prefix: --mc-max-dist
- id: resid_cut_off
  doc: 'Results will have to show deviations in the contingency table in the same
    direction as the rest of the window (default: 0.01)'
  type: string
  inputBinding:
    prefix: --resid-cutoff
- id: keep_temp_files
  doc: 'Boolean indicating that you would like to keep the intermediate files generated
    by this function. This can be useful for debugging, but in general should be left
    False. (default: False)'
  type: string
  inputBinding:
    prefix: --keep-temp-files
- id: min_cluster
  doc: 'The minimum number of each sample category that must be present in every block
    that is output. (default: 2)'
  type: long
  inputBinding:
    prefix: --min-cluster
- id: seed
  doc: 'A seed to provide to the random number generator for permutation testing.
    Only change this if you are debugging and want to make sure the permutation output
    is consistent (default: -1)'
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- methylpy
- DMRfind
