class: CommandLineTool
id: binlorry.cwl
inputs:
- id: input
  doc: FASTA/FASTQ of input reads or a directory which will be recursively searched
    for FASTQ files (required).
  type: string
  inputBinding:
    prefix: --input
- id: data
  doc: A CSV file with metadata fields for reads or a directory of csv files that
    will be recursively searched for names corresponding to a matching input FASTA/FASTQ
    files.
  type: string
  inputBinding:
    prefix: --data
- id: unordered_data
  doc: 'The metadata tables are not in the same order as the reads - they will all
    beloaded and then looked up as needed (slower). (default: False)'
  type: boolean
  inputBinding:
    prefix: --unordered_data
- id: output
  doc: Output filename (or filename prefix)
  type: string
  inputBinding:
    prefix: --output
- id: out_report
  doc: 'Output a report along with FASTA/FASTQ. (default: False)'
  type: boolean
  inputBinding:
    prefix: --out-report
- id: force_output
  doc: 'Output binned/filtered files even if empty. (default: False)'
  type: boolean
  inputBinding:
    prefix: --force-output
- id: verbosity
  doc: 'Level of output information: 0 = none, 1 = some, 2 = lots (default: 1)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: bin_by
  doc: Specify header field(s) to bin the reads by. For multiple fields these will
    be nested in order specified. e.g. `--bin-by barcode reference`
  type: string[]
  inputBinding:
    prefix: --bin-by
- id: filter_by
  doc: Specify header field and accepted values to filter the reads by. Multiple instances
    of this option can be specified. e.g. `--filter-by barcode BC01 BC02-- filter-by
    genotype Type1`
  type: string[]
  inputBinding:
    prefix: --filter-by
- id: min_length
  doc: Filter the reads by their length, specifying the minimum length.
  type: long
  inputBinding:
    prefix: --min-length
- id: max_length
  doc: Filter the reads by their length, specifying the maximum length.
  type: long
  inputBinding:
    prefix: --max-length
- id: header_delimiters
  doc: 'Delimiters to use when searching for key:value pairs in FASTA/FASTQ header.
    (default: =)'
  type: string
  inputBinding:
    prefix: --header-delimiters
outputs: []
cwlVersion: v1.1
baseCommand:
- binlorry
