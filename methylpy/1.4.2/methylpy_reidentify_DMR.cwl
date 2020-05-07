class: CommandLineTool
id: methylpy_reidentify_DMR.cwl
inputs:
- id: input_rms_file
  doc: 'File storing the results of RMS tests (from DMRfind function. (default: None)'
  type: string
  inputBinding:
    prefix: --input-rms-file
- id: output_file
  doc: 'String indicating the name of output file (default: None)'
  type: string
  inputBinding:
    prefix: --output-file
- id: collapse_samples
  doc: 'A list of samples for collapsing blocks (default: False)'
  type: string[]
  inputBinding:
    prefix: --collapse-samples
- id: sample_category
  doc: 'A list of categories that each respective sample belongs to; the categories
    must begin at 0 and increase by 1 for each category added. ex: samples [A,B,C]
    categories [0,1,2] or categories [0, 1, 0] (default: False)'
  type: string[]
  inputBinding:
    prefix: --sample-category
- id: min_cluster
  doc: 'The minimum number of each sample category that must be present in every block
    that is output. (default: 2)'
  type: long
  inputBinding:
    prefix: --min-cluster
- id: sig_cut_off
  doc: 'Float indicating at what FDR you want to consider a result significant. (default:
    0.01)'
  type: string
  inputBinding:
    prefix: --sig-cutoff
- id: dmr_max_dist
  doc: 'Maximum distance two significant sites can be to be included in the same block.
    (default: 250)'
  type: string
  inputBinding:
    prefix: --dmr-max-dist
- id: min_num_dms
  doc: 'The minimum number of differentially methylated sites that a differentially
    methylated region needs to contain to be reported (default: 0)'
  type: long
  inputBinding:
    prefix: --min-num-dms
- id: resid_cut_off
  doc: 'Results will have to show deviations in the contingency table in the same
    direction as the rest of the window (default: 0.01)'
  type: string
  inputBinding:
    prefix: --resid-cutoff
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
outputs: []
cwlVersion: v1.1
baseCommand:
- methylpy
- reidentify-DMR
