class: CommandLineTool
id: ../../../ngmlr.cwl
inputs:
- id: skip_write
  doc: Don't write reference index to disk [false]
  type: boolean
  inputBinding:
    prefix: --skip-write
- id: bam_fix
  doc: Report reads with > 64k CIGAR operations as unmapped. Required to be compatibel
    to BAM format [false]
  type: boolean
  inputBinding:
    prefix: --bam-fix
- id: rg_id
  doc: Adds RG:Z:<string> to all alignments in SAM/BAM [none]
  type: string
  inputBinding:
    prefix: --rg-id
- id: rg_sm
  doc: 'RG header: Sample [none]'
  type: string
  inputBinding:
    prefix: --rg-sm
- id: rg_lb
  doc: 'RG header: Library [none]'
  type: string
  inputBinding:
    prefix: --rg-lb
- id: rg_pl
  doc: 'RG header: Platform [none]'
  type: string
  inputBinding:
    prefix: --rg-pl
- id: rg_ds
  doc: 'RG header: Description [none]'
  type: string
  inputBinding:
    prefix: --rg-ds
- id: rg_dt
  doc: 'RG header: Date (format: YYYY-MM-DD) [none]'
  type: string
  inputBinding:
    prefix: --rg-dt
- id: rg_pu
  doc: 'RG header: Platform unit [none]'
  type: string
  inputBinding:
    prefix: --rg-pu
- id: rg_pi
  doc: 'RG header: Median insert size [none]'
  type: string
  inputBinding:
    prefix: --rg-pi
- id: rg_pg
  doc: 'RG header: Programs [none]'
  type: string
  inputBinding:
    prefix: --rg-pg
- id: rg_cn
  doc: 'RG header: sequencing center [none]'
  type: string
  inputBinding:
    prefix: --rg-cn
- id: rg_fo
  doc: 'RG header: Flow order [none]'
  type: string
  inputBinding:
    prefix: --rg-fo
- id: rg_ks
  doc: 'RG header: Key sequence [none]'
  type: string
  inputBinding:
    prefix: --rg-ks
- id: no_small_inv
  doc: Don't detect small inversions [false]
  type: boolean
  inputBinding:
    prefix: --no-smallinv
- id: no_low_quality_split
  doc: Split alignments with poor quality [false]
  type: boolean
  inputBinding:
    prefix: --no-lowqualitysplit
- id: verbose
  doc: Debug output [false]
  type: boolean
  inputBinding:
    prefix: --verbose
- id: no_progress
  doc: Don't print progress info while mapping [false]
  type: boolean
  inputBinding:
    prefix: --no-progress
- id: km_er_skip
  doc: Number of k-mers to skip when building the lookup table from the reference
    [2]
  type: long
  inputBinding:
    prefix: --kmer-skip
- id: bin_size
  doc: Sets the size of the grid used during candidate search [4]
  type: long
  inputBinding:
    prefix: --bin-size
- id: max_segments
  doc: Max number of segments allowed for a read per kb [1]
  type: long
  inputBinding:
    prefix: --max-segments
- id: sub_read_length
  doc: Length of fragments reads are split into [256]
  type: long
  inputBinding:
    prefix: --subread-length
- id: sub_read_corridor
  doc: Length of corridor sub-reads are aligned with [40]
  type: long
  inputBinding:
    prefix: --subread-corridor
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- ngmlr
