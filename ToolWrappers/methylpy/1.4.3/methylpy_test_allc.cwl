class: CommandLineTool
id: methylpy_test_allc.cwl
inputs:
- id: in_all_c_file
  doc: 'allc file to be tested. (default: None)'
  type: File?
  inputBinding:
    prefix: --allc-file
- id: in_sample
  doc: 'sample name (default: None)'
  type: string?
  inputBinding:
    prefix: --sample
- id: in_unmethylated_control
  doc: "name of the chromosome/region that you want to use to\nestimate the non-conversion\
    \ rate of your sample, or\nthe non-conversion rate you would like to use.\nConsequently,\
    \ control is either a string, or a\ndecimal. If control is a string then it should\
    \ be in\nthe following format: \"chrom:start-end\". If you would\nlike to specify\
    \ an entire chromosome simply use\n\"chrom:\" (default: None)"
  type: double?
  inputBinding:
    prefix: --unmethylated-control
- id: in_path_to_output
  doc: "Path to a directory where you would like the output to\nbe stored. The default\
    \ is the same directory as the\ninput fastqs. (default: )"
  type: File?
  inputBinding:
    prefix: --path-to-output
- id: in_num_procs
  doc: "Number of processors you wish to use to parallelize\nthis function (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: --num-procs
- id: in_min_cov
  doc: "Minimum number of reads that must cover a site for it\nto be tested. (default:\
    \ 2)"
  type: long?
  inputBinding:
    prefix: --min-cov
- id: in_compress_output
  doc: "Boolean indicating whether to compress (by gzip) the\nfinal output (default:\
    \ True)"
  type: boolean?
  inputBinding:
    prefix: --compress-output
- id: in_sig_cut_off
  doc: "Float indicating at what FDR you want to consider a\nresult significant. (default:\
    \ 0.01)"
  type: double?
  inputBinding:
    prefix: --sig-cutoff
- id: in_sort_mem
  doc: "Parameter to pass to unix sort with -S/--buffer-size\ncommand (default: 500M)"
  type: long?
  inputBinding:
    prefix: --sort-mem
- id: in_remove_chr_prefix
  doc: "Boolean indicates whether to remove in the final\noutput the \"chr\" prefix\
    \ in the chromosome name\n(default: True)\n"
  type: boolean?
  inputBinding:
    prefix: --remove-chr-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_to_output
  doc: "Path to a directory where you would like the output to\nbe stored. The default\
    \ is the same directory as the\ninput fastqs. (default: )"
  type: File?
  outputBinding:
    glob: $(inputs.in_path_to_output)
hints: []
cwlVersion: v1.1
baseCommand:
- methylpy
- test-allc
