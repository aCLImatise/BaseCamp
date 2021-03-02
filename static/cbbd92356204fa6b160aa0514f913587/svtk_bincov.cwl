class: CommandLineTool
id: svtk_bincov.cwl
inputs:
- id: in_norm_out
  doc: Output bed file of normalized coverage
  type: File?
  inputBinding:
    prefix: --norm_out
- id: in_binsize
  doc: Bin size (bp) [1000]
  type: long?
  inputBinding:
    prefix: --binsize
- id: in_mode
  doc: Type of coverage to calculate [nucleotide]
  type: string?
  inputBinding:
    prefix: --mode
- id: in_blacklist
  doc: BED file of regions to exclude
  type: File?
  inputBinding:
    prefix: --blacklist
- id: in_gzip
  doc: Compress output bed files
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_pre_subset_ted
  doc: Input bam is already subsetted to desired chr
  type: boolean?
  inputBinding:
    prefix: --presubsetted
- id: in_overlap
  doc: "Maximum fraction of each bin permitted to overlap with\nblacklist regions.\
    \ [0.05]"
  type: double?
  inputBinding:
    prefix: --overlap
- id: in_old_bt
  doc: Using a bedtools version pre-2.24.0
  type: boolean?
  inputBinding:
    prefix: --oldBT
- id: in_bam
  doc: Input bam
  type: string
  inputBinding:
    position: 0
- id: in_chr
  doc: Contig to evaluate
  type: string
  inputBinding:
    position: 1
- id: in_cov_out
  doc: Output bed file of raw coverage
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_norm_out
  doc: Output bed file of normalized coverage
  type: File?
  outputBinding:
    glob: $(inputs.in_norm_out)
hints: []
cwlVersion: v1.1
baseCommand:
- svtk
- bincov
