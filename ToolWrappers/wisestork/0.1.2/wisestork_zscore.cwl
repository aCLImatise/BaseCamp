class: CommandLineTool
id: wisestork_zscore.cwl
inputs:
- id: in_binsize
  doc: RANGE  Bin size to use. Default = 50000
  type: long?
  inputBinding:
    prefix: --binsize
- id: in_reference
  doc: Path to reference fasta  [required]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_bin_file
  doc: Optional path to region BED file
  type: File?
  inputBinding:
    prefix: --bin-file
- id: in_input
  doc: Path to input BED file  [required]
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Path to output BED file  [required]
  type: File?
  inputBinding:
    prefix: --output
- id: in_dictionary_file
  doc: Path to dictionary BED file  [required]
  type: File?
  inputBinding:
    prefix: --dictionary-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to output BED file  [required]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- wisestork
- zscore
