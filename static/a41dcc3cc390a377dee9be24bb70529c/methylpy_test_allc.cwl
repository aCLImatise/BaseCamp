class: CommandLineTool
id: methylpy_test_allc.cwl
inputs:
- id: all_c_file
  doc: 'allc file to be tested. (default: None)'
  type: string
  inputBinding:
    prefix: --allc-file
- id: sample
  doc: 'sample name (default: None)'
  type: string
  inputBinding:
    prefix: --sample
- id: unmethylated_control
  doc: 'name of the chromosome/region that you want to use to estimate the non-conversion
    rate of your sample, or the non-conversion rate you would like to use. Consequently,
    control is either a string, or a decimal. If control is a string then it should
    be in the following format: "chrom:start-end". If you would like to specify an
    entire chromosome simply use "chrom:" (default: None)'
  type: string
  inputBinding:
    prefix: --unmethylated-control
- id: path_to_output
  doc: 'Path to a directory where you would like the output to be stored. The default
    is the same directory as the input fastqs. (default: )'
  type: File
  inputBinding:
    prefix: --path-to-output
- id: num_procs
  doc: 'Number of processors you wish to use to parallelize this function (default:
    1)'
  type: string
  inputBinding:
    prefix: --num-procs
- id: min_cov
  doc: 'Minimum number of reads that must cover a site for it to be tested. (default:
    2)'
  type: long
  inputBinding:
    prefix: --min-cov
- id: compress_output
  doc: 'Boolean indicating whether to compress (by gzip) the final output (default:
    True)'
  type: string
  inputBinding:
    prefix: --compress-output
- id: sig_cut_off
  doc: 'Float indicating at what FDR you want to consider a result significant. (default:
    0.01)'
  type: string
  inputBinding:
    prefix: --sig-cutoff
- id: sort_mem
  doc: 'Parameter to pass to unix sort with -S/--buffer-size command (default: 500M)'
  type: string
  inputBinding:
    prefix: --sort-mem
- id: remove_chr_prefix
  doc: 'Boolean indicates whether to remove in the final output the "chr" prefix in
    the chromosome name (default: True)'
  type: string
  inputBinding:
    prefix: --remove-chr-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- methylpy
- test-allc
