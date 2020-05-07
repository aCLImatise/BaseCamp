class: CommandLineTool
id: wisestork_newref.cwl
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
  doc: Path(s) to input BEDs  [required]
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: Path to output BED file  [required]
  type: File
  inputBinding:
    prefix: --output
- id: n_bins
  doc: Amount of neighbours bins to consider per bin
  type: long
  inputBinding:
    prefix: --n-bins
outputs: []
cwlVersion: v1.1
baseCommand:
- wisestork
- newref
