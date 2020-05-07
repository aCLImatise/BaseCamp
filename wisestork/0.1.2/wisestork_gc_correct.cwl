class: CommandLineTool
id: wisestork_gc_correct.cwl
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
  doc: Path to input BED file  [required]
  type: File
  inputBinding:
    prefix: --input
- id: frac_n
  doc: Maximum fraction of N-bases per bin. Default = 0.1
  type: double
  inputBinding:
    prefix: --frac-n
- id: frac_r
  doc: Minimum fraction of reads per bin. Default = 0.0001
  type: double
  inputBinding:
    prefix: --frac-r
- id: iter
  doc: Number of iterations for LOWESS function. Default = 3
  type: long
  inputBinding:
    prefix: --iter
- id: frac_lowess
  doc: Fraction of data to use for LOWESS function. Default = 0.1
  type: double
  inputBinding:
    prefix: --frac-lowess
outputs: []
cwlVersion: v1.1
baseCommand:
- wisestork
- gc-correct
