class: CommandLineTool
id: wisestork_gc_correct.cwl
inputs:
- id: in_binsize
  doc: RANGE  Bin size to use. Default = 50000
  type: long
  inputBinding:
    prefix: --binsize
- id: in_reference
  doc: Path to reference fasta  [required]
  type: File
  inputBinding:
    prefix: --reference
- id: in_bin_file
  doc: Optional path to region BED file
  type: File
  inputBinding:
    prefix: --bin-file
- id: in_output
  doc: Path to output BED file  [required]
  type: File
  inputBinding:
    prefix: --output
- id: in_input
  doc: Path to input BED file  [required]
  type: File
  inputBinding:
    prefix: --input
- id: in_frac_n
  doc: Maximum fraction of N-bases per bin. Default =
  type: double
  inputBinding:
    prefix: --frac-n
- id: in_frac_lowess
  doc: "Fraction of data to use for LOWESS function.\nDefault = 0.1"
  type: double
  inputBinding:
    prefix: --frac-lowess
- id: in_zero_dot_one
  doc: -r, --frac-r FLOAT           Minimum fraction of reads per bin. Default =
  type: double
  inputBinding:
    position: 0
- id: in_zero_dot_zero_zero_zero_one
  doc: -t, --iter INTEGER           Number of iterations for LOWESS function.
  type: double
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to output BED file  [required]
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- wisestork
- gc-correct
