class: CommandLineTool
id: divide_bam.py.cwl
inputs:
- id: in_input_file
  doc: "Alignment file in BAM format. BAM file should be\nsorted and indexed."
  type: File
  inputBinding:
    prefix: --input-file
- id: in_subset_num
  doc: Number of small BAM files
  type: long
  inputBinding:
    prefix: --subset-num
- id: in_out_prefix
  doc: Prefix of output BAM files. Output "Prefix_num.bam".
  type: string
  inputBinding:
    prefix: --out-prefix
- id: in_skip_unmap
  doc: Skip unmapped reads.
  type: boolean
  inputBinding:
    prefix: --skip-unmap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- divide_bam.py
