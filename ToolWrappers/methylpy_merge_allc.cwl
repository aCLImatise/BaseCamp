class: CommandLineTool
id: methylpy_merge_allc.cwl
inputs:
- id: in_output_file
  doc: '[--num-procs NUM_PROCS]'
  type: File
  inputBinding:
    prefix: --output-file
- id: in_all_c_files
  doc: 'List of allc files to merge. (default: None)'
  type: string[]
  inputBinding:
    prefix: --allc-files
- id: in_num_procs
  doc: 'Number of processors to use (default: 1)'
  type: long
  inputBinding:
    prefix: --num-procs
- id: in_compress_output
  doc: "Boolean indicating whether to compress (by gzip) the\nfinal output (default:\
    \ True)"
  type: boolean
  inputBinding:
    prefix: --compress-output
- id: in_skip_snp_info
  doc: "Boolean indicating whether to skip the merging of SNP\ninformation (default:\
    \ True)"
  type: boolean
  inputBinding:
    prefix: --skip-snp-info
- id: in_mini_batch
  doc: "The maximum number of allc files to be merged at the\nsame time. Since OS\
    \ or python may limit the number of\nfiles that can be open at once, value larger\
    \ than 200\nis not recommended (default: 100)\n"
  type: long
  inputBinding:
    prefix: --mini-batch
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: '[--num-procs NUM_PROCS]'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- methylpy
- merge-allc
