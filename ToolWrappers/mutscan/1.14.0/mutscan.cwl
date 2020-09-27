class: CommandLineTool
id: mutscan.cwl
inputs:
- id: in_read_one
  doc: read1 file name (string)
  type: boolean
  inputBinding:
    prefix: --read1
- id: in_read_two
  doc: read2 file name (string [=])
  type: boolean
  inputBinding:
    prefix: --read2
- id: in_mutation
  doc: mutation file name, can be a CSV format or a VCF format (string [=])
  type: boolean
  inputBinding:
    prefix: --mutation
- id: in_ref
  doc: reference fasta file name (only needed when mutation file is a VCF) (string
    [=])
  type: boolean
  inputBinding:
    prefix: --ref
- id: in_json
  doc: filename of JSON report, default is no JSON report (string [=])
  type: boolean
  inputBinding:
    prefix: --json
- id: in_thread
  doc: worker thread number, default is 4 (int [=4])
  type: boolean
  inputBinding:
    prefix: --thread
- id: in_support
  doc: min read support for reporting a mutation, default is 2 (int [=2])
  type: boolean
  inputBinding:
    prefix: --support
- id: in_mark
  doc: when mutation file is a vcf file, --mark means only process the records with
    FILTER column is M
  type: boolean
  inputBinding:
    prefix: --mark
- id: in_legacy
  doc: use legacy mode, usually much slower but may be able to find a little more
    reads in certain case
  type: boolean
  inputBinding:
    prefix: --legacy
- id: in_standalone
  doc: output standalone HTML report with single file. Don't use this option when
    scanning too many target mutations (i.e. >1000 mutations)
  type: File
  inputBinding:
    prefix: --standalone
- id: in_simplified
  doc: simplified mode uses less RAM but reports less information. This option can
    be auto/on/off, by default it's auto, which means automatically enabled when processing
    large FASTQ with large VCF. (string [=auto])
  type: boolean
  inputBinding:
    prefix: --simplified
- id: in_verbose
  doc: enable verbose mode, more information will be output in STDERR
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_standalone
  doc: output standalone HTML report with single file. Don't use this option when
    scanning too many target mutations (i.e. >1000 mutations)
  type: File
  outputBinding:
    glob: $(inputs.in_standalone)
cwlVersion: v1.1
baseCommand:
- mutscan
