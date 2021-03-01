class: CommandLineTool
id: methylpy_reidentify_DMR.cwl
inputs:
- id: in_input_rms_file
  doc: "File storing the results of RMS tests (from DMRfind\nfunction. (default: None)"
  type: File?
  inputBinding:
    prefix: --input-rms-file
- id: in_output_file
  doc: "String indicating the name of output file (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_collapse_samples
  doc: "A list of samples for collapsing blocks (default:\nFalse)"
  type: string[]
  inputBinding:
    prefix: --collapse-samples
- id: in_sample_category
  doc: "A list of categories that each respective sample\nbelongs to; the categories\
    \ must begin at 0 and\nincrease by 1 for each category added. ex: samples\n[A,B,C]\
    \ categories [0,1,2] or categories [0, 1, 0]\n(default: False)"
  type: string[]
  inputBinding:
    prefix: --sample-category
- id: in_min_cluster
  doc: "The minimum number of each sample category that must\nbe present in every\
    \ block that is output. (default: 2)"
  type: long?
  inputBinding:
    prefix: --min-cluster
- id: in_sig_cut_off
  doc: "Float indicating at what FDR you want to consider a\nresult significant. (default:\
    \ 0.01)"
  type: double?
  inputBinding:
    prefix: --sig-cutoff
- id: in_dmr_max_dist
  doc: "Maximum distance two significant sites can be to be\nincluded in the same\
    \ block. (default: 250)"
  type: long?
  inputBinding:
    prefix: --dmr-max-dist
- id: in_min_num_dms
  doc: "The minimum number of differentially methylated sites\nthat a differentially\
    \ methylated region needs to\ncontain to be reported (default: 0)"
  type: long?
  inputBinding:
    prefix: --min-num-dms
- id: in_resid_cut_off
  doc: "Results will have to show deviations in the\ncontingency table in the same\
    \ direction as the rest of\nthe window (default: 0.01)"
  type: double?
  inputBinding:
    prefix: --resid-cutoff
- id: in_num_sims
  doc: "Number of permutation tests you would like to run to\nestimate the p-values\
    \ of the differential methylation\ntests (default: 3000)"
  type: long?
  inputBinding:
    prefix: --num-sims
- id: in_min_tests
  doc: "Minimum number of permuation tests you\\ would d like\nto run for each mC\
    \ (default: 100)\n"
  type: long?
  inputBinding:
    prefix: --min-tests
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "String indicating the name of output file (default:\nNone)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- methylpy
- reidentify-DMR
