class: CommandLineTool
id: methylpy_merge_allc.cwl
inputs:
- id: all_c_files
  doc: 'List of allc files to merge. (default: None)'
  type: string[]
  inputBinding:
    prefix: --allc-files
- id: output_file
  doc: 'String indicating the name of output file (default: None)'
  type: string
  inputBinding:
    prefix: --output-file
- id: num_procs
  doc: 'Number of processors to use (default: 1)'
  type: string
  inputBinding:
    prefix: --num-procs
- id: compress_output
  doc: 'Boolean indicating whether to compress (by gzip) the final output (default:
    True)'
  type: string
  inputBinding:
    prefix: --compress-output
- id: skip_snp_info
  doc: 'Boolean indicating whether to skip the merging of SNP information (default:
    True)'
  type: string
  inputBinding:
    prefix: --skip-snp-info
- id: mini_batch
  doc: 'The maximum number of allc files to be merged at the same time. Since OS or
    python may limit the number of files that can be open at once, value larger than
    200 is not recommended (default: 100)'
  type: long
  inputBinding:
    prefix: --mini-batch
outputs: []
cwlVersion: v1.1
baseCommand:
- methylpy
- merge-allc
