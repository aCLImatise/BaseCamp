class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/divide_bam.py.cwl
inputs:
- id: input_file
  doc: Alignment file in BAM format. BAM file should be sorted and indexed.
  type: string
  inputBinding:
    prefix: --input-file
- id: subset_num
  doc: Number of small BAM files
  type: string
  inputBinding:
    prefix: --subset-num
- id: out_prefix
  doc: Prefix of output BAM files. Output "Prefix_num.bam".
  type: string
  inputBinding:
    prefix: --out-prefix
- id: skip_unmap
  doc: Skip unmapped reads.
  type: boolean
  inputBinding:
    prefix: --skip-unmap
outputs: []
cwlVersion: v1.1
baseCommand:
- divide_bam.py
