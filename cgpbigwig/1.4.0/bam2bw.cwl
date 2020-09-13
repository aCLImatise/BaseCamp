class: CommandLineTool
id: ../../../bam2bw.cwl
inputs:
- id: in_input
  doc: '[file]                                Path to the input [b|cr]am file.'
  type: boolean
  inputBinding:
    prefix: --input
- id: in_filter
  doc: '[int]                                SAM flags to filter. [default: 4]'
  type: boolean
  inputBinding:
    prefix: --filter
- id: in_filter_include
  doc: "[int]                        SAM flags to include. [default: 0]\nN.B. if properly\
    \ paired reads are filtered for inclusion bam2bw will assume paired-end data\n\
    and exclude any proper-pair flagged reads not in F/R orientation.-o  --outfile\
    \ [file]                              Path to the output .bw file produced. [default:'output.bam.bw']"
  type: boolean
  inputBinding:
    prefix: --filter-include
- id: in_scale_log_one_zero
  doc: '[float]                         A scale factor to multiply to output [default:
    -634359778]'
  type: boolean
  inputBinding:
    prefix: --scale-log10
- id: in_region
  doc: '[file]                               A samtools style region (contig:start-stop)
    or a bed file of regions over which to produce the bigwig file'
  type: boolean
  inputBinding:
    prefix: --region
- id: in_include_zeroes
  doc: Include zero coverage regions as additional entries to the bw file
  type: boolean
  inputBinding:
    prefix: --include-zeroes
- id: in_reference
  doc: '[file]                            Path to reference genome.fa file (required
    for cram if ref_path cannot be resolved)'
  type: boolean
  inputBinding:
    prefix: --reference
- id: in_overlap
  doc: Use overlapping read check
  type: boolean
  inputBinding:
    prefix: --overlap
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_b_vertical_line_cr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_am
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam2bw
