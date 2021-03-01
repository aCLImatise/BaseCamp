class: CommandLineTool
id: binlorry.cwl
inputs:
- id: in_input
  doc: "FASTA/FASTQ of input reads or a directory which will\nbe recursively searched\
    \ for FASTQ files (required)."
  type: File?
  inputBinding:
    prefix: --input
- id: in_data
  doc: "A CSV file with metadata fields for reads or a\ndirectory of csv files that\
    \ will be recursively\nsearched for names corresponding to a matching input\n\
    FASTA/FASTQ files."
  type: File?
  inputBinding:
    prefix: --data
- id: in_unordered_data
  doc: "The metadata tables are not in the same order as the\nreads - they will all\
    \ beloaded and then looked up as\nneeded (slower). (default: False)"
  type: boolean?
  inputBinding:
    prefix: --unordered_data
- id: in_output
  doc: Output filename (or filename prefix)
  type: File?
  inputBinding:
    prefix: --output
- id: in_out_report
  doc: "Output a report along with FASTA/FASTQ. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --out-report
- id: in_force_output
  doc: "Output binned/filtered files even if empty.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --force-output
- id: in_verbosity
  doc: "Level of output information: 0 = none, 1 = some, 2 =\nlots (default: 1)"
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_bin_by
  doc: "Specify header field(s) to bin the reads by. For\nmultiple fields these will\
    \ be nested in order\nspecified. e.g. `--bin-by barcode reference`"
  type: string[]
  inputBinding:
    prefix: --bin-by
- id: in_filter_by
  doc: "Specify header field and accepted values to filter\nthe reads by. Multiple\
    \ instances of this option can\nbe specified. e.g. `--filter-by barcode BC01 BC02--\n\
    filter-by genotype Type1`"
  type: string[]
  inputBinding:
    prefix: --filter-by
- id: in_min_length
  doc: "Filter the reads by their length, specifying the\nminimum length."
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_max_length
  doc: "Filter the reads by their length, specifying the\nmaximum length."
  type: long?
  inputBinding:
    prefix: --max-length
- id: in_header_delimiters
  doc: "Delimiters to use when searching for key:value pairs\nin FASTA/FASTQ header.\
    \ (default: =)"
  type: string?
  inputBinding:
    prefix: --header-delimiters
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output filename (or filename prefix)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- binlorry
