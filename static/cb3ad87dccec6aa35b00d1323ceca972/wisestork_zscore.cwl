class: CommandLineTool
id: wisestork_zscore.cwl
inputs:
- id: binsize
  doc: RANGE  Bin size to use. Default = 50000
  type: long
  inputBinding:
    prefix: --binsize
- id: reference
  doc: Path to reference fasta  [required]
  type: File
  inputBinding:
    prefix: --reference
- id: bin_file
  doc: Optional path to region BED file
  type: File
  inputBinding:
    prefix: --bin-file
- id: input
  doc: Path to input BED file  [required]
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: Path to output BED file  [required]
  type: File
  inputBinding:
    prefix: --output
- id: dictionary_file
  doc: Path to dictionary BED file  [required]
  type: File
  inputBinding:
    prefix: --dictionary-file
outputs: []
cwlVersion: v1.1
baseCommand:
- wisestork
- zscore
