class: CommandLineTool
id: wisestork_count.cwl
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
- id: output
  doc: Path to output BED file  [required]
  type: File
  inputBinding:
    prefix: --output
- id: input
  doc: Path to input BAM file  [required]
  type: File
  inputBinding:
    prefix: --input
outputs: []
cwlVersion: v1.1
baseCommand:
- wisestork
- count
