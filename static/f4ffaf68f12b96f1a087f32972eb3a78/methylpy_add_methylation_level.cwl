class: CommandLineTool
id: methylpy_add_methylation_level.cwl
inputs:
- id: input_tsv_file
  doc: 'A tab-separate file that specifies genomic intervals. The file contains a
    header.First three columns are required to be chromosome, start and end, which
    are 1-based cooridates. It may contain additional column(s). (default: None)'
  type: string
  inputBinding:
    prefix: --input-tsv-file
- id: output_file
  doc: 'Name of output file (default: None)'
  type: string
  inputBinding:
    prefix: --output-file
- id: all_c_files
  doc: 'List of allc files. (default: None)'
  type: string[]
  inputBinding:
    prefix: --allc-files
- id: samples
  doc: 'List of space separated samples matching allc files. By default sample names
    will be inferred from allc filenames (default: None)'
  type: string[]
  inputBinding:
    prefix: --samples
- id: mc_type
  doc: "List of space separated mc nucleotide contexts for which you want to look\
    \ for DMRs. These classifications may use the wildcards H (indicating anything\
    \ but a G) and N (indicating any nucleotide). (default: ['CGN'])"
  type: string[]
  inputBinding:
    prefix: --mc-type
- id: extra_info
  doc: 'Boolean to indicate whether to generate two output extra files with the total
    basecalls and covered sites in each of the regions. (default: False)'
  type: string
  inputBinding:
    prefix: --extra-info
- id: num_procs
  doc: 'Number of processors you wish to use to parallelize this function (default:
    1)'
  type: string
  inputBinding:
    prefix: --num-procs
- id: min_cov
  doc: 'Minimum coverage for a site to be included (default: 0)'
  type: long
  inputBinding:
    prefix: --min-cov
- id: max_cov
  doc: 'Maximum coverage for a site to be included. By default this cutoff is not
    applied. (default: None)'
  type: long
  inputBinding:
    prefix: --max-cov
- id: buffer_line_number
  doc: 'size of buffer for reads to be written on hard drive. (default: 100000)'
  type: string
  inputBinding:
    prefix: --buffer-line-number
- id: input_no_header
  doc: 'Indicating whether input tsv file contains a header. If this is set to True,
    a header will be automatically generated in the output file. (default: False)'
  type: string
  inputBinding:
    prefix: --input-no-header
outputs: []
cwlVersion: v1.1
baseCommand:
- methylpy
- add-methylation-level
