class: CommandLineTool
id: ganon_report.cwl
inputs:
- id: in_database_prefix_used
  doc: "[ [ ...]], --db-prefix [ [ ...]]\nDatabase prefix[es] used for classification\
    \ (in any\norder). Only \".tax\" file is required. If not provided,\nnew taxonomy\
    \ will be downloaded"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_output_format
  doc: "Output format [text, tsv, csv]. text outputs a\ntabulated formatted text file\
    \ for better\nvisualization. Default: tsv"
  type: File?
  inputBinding:
    prefix: --output-format
- id: in_report_type
  doc: 'Type of report to generate [reads, matches]. Default:'
  type: boolean?
  inputBinding:
    prefix: --report-type
- id: in_sort
  doc: "Sort report by [rank, lineage, count, unique].\nDefault: rank (with custom\
    \ --ranks) or lineage (with\n--ranks all)"
  type: boolean?
  inputBinding:
    prefix: --sort
- id: in_split_hierarchy
  doc: "Split output reports by hierarchy (from ganon classify\n--hierarchy-labels).\
    \ If activated, the output files\nwill be named as \"{output_prefix}.{hierarchy}.tre\""
  type: boolean?
  inputBinding:
    prefix: --split-hierarchy
- id: in_one_more_hierarchies_skip
  doc: "[ [ ...]], --skip-hierarchy [ [ ...]]\nOne or more hierarchies to skip in\
    \ the report (from\nganon classify --hierarchy-labels)"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_one_more_hierarchies_keep
  doc: "[ [ ...]], --keep-hierarchy [ [ ...]]\nOne or more hierarchies to keep in\
    \ the report (from\nganon classify --hierarchy-labels)"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_tax_dump_file
  doc: "[ [ ...]]\nForce use of a specific version of the\n(taxdump.tar.gz) or (nodes.dmp\
    \ names.dmp [merged.dmp])\nfile(s) from NCBI Taxonomy (otherwise it will be\n\
    automatically downloaded)"
  type: boolean?
  inputBinding:
    prefix: --taxdump-file
- id: in_input_directory
  doc: Directory containing input files
  type: boolean?
  inputBinding:
    prefix: --input-directory
- id: in_input_extension
  doc: "Extension of files to use with --input-directory\n(provide it without * expansion,\
    \ e.g. \".rep\")"
  type: boolean?
  inputBinding:
    prefix: --input-extension
- id: in_verbose
  doc: Verbose output mode
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet output mode
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_min_count
  doc: Minimum number of counts to keep the taxa
  type: boolean?
  inputBinding:
    prefix: --min-count
- id: in_min_percentage
  doc: Minimum percentage of counts to keep the taxa [0-1]
  type: boolean?
  inputBinding:
    prefix: --min-percentage
- id: in_names
  doc: '[ [ ...]]     Show only entries matching exact names of the provided'
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_tax_ids
  doc: '[ [ ...]]    One or more taxids to report (including children taxa)'
  type: boolean?
  inputBinding:
    prefix: --taxids
- id: in_one_more_files
  doc: "[REP_FILES [REP_FILES ...]], --rep-files [REP_FILES [REP_FILES ...]]\nOne\
    \ or more *.rep files from ganon classify"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_output_prefix
  doc: "Output prefix for report file \"{output_prefix}.tre\".\nIn case of multiple\
    \ files, the base input filename\nwill be appended at the end of the output file\n\
    \"{output_prefix + FILENAME}.tre\"\n"
  type: File?
  inputBinding:
    prefix: --output-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_format
  doc: "Output format [text, tsv, csv]. text outputs a\ntabulated formatted text file\
    \ for better\nvisualization. Default: tsv"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_format)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0
cwlVersion: v1.1
baseCommand:
- ganon
- report
