class: CommandLineTool
id: methylpy_add_methylation_level.cwl
inputs:
- id: in_input_tsv_file
  doc: "A tab-separate file that specifies genomic intervals.\nThe file contains a\
    \ header.First three columns are\nrequired to be chromosome, start and end, which\
    \ are\n1-based cooridates. It may contain additional\ncolumn(s). (default: None)"
  type: File?
  inputBinding:
    prefix: --input-tsv-file
- id: in_output_file
  doc: 'Name of output file (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
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
- id: in_mc_type
  doc: "List of space separated mc nucleotide contexts for\nwhich you want to look\
    \ for DMRs. These classifications\nmay use the wildcards H (indicating anything\
    \ but a G)\nand N (indicating any nucleotide). (default: ['CGN'])"
  type: string[]
  inputBinding:
    prefix: --mc-type
- id: in_extra_info
  doc: "Boolean to indicate whether to generate two output\nextra files with the total\
    \ basecalls and covered sites\nin each of the regions. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --extra-info
- id: in_num_procs
  doc: "Number of processors you wish to use to parallelize\nthis function (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: --num-procs
- id: in_min_cov
  doc: "Minimum coverage for a site to be included (default:\n0)"
  type: long?
  inputBinding:
    prefix: --min-cov
- id: in_max_cov
  doc: "Maximum coverage for a site to be included. By default\nthis cutoff is not\
    \ applied. (default: None)"
  type: long?
  inputBinding:
    prefix: --max-cov
- id: in_buffer_line_number
  doc: "size of buffer for reads to be written on hard drive.\n(default: 100000)"
  type: long?
  inputBinding:
    prefix: --buffer-line-number
- id: in_input_no_header
  doc: "Indicating whether input tsv file contains a header.\nIf this is set to True,\
    \ a header will be automatically\ngenerated in the output file. (default: False)\n"
  type: File?
  inputBinding:
    prefix: --input-no-header
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Name of output file (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- methylpy
- add-methylation-level
