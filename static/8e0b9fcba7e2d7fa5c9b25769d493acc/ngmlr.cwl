class: CommandLineTool
id: ngmlr.cwl
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
- id: x
  doc: <pacbio, ont>,  --presets <pacbio, ont> Parameter presets for different sequencing
    technologies [pacbio]
  type: boolean
  inputBinding:
    prefix: -x
- id: i
  doc: <0-1>,  --min-identity <0-1> Alignments with an identity lower than this threshold
    will be discarded [0.65]
  type: boolean
  inputBinding:
    prefix: -i
- id: r
  doc: <int/float>,  --min-residues <int/float> Alignments containing less than <int>
    or (<float> * read length) residues will be discarded [0.25]
  type: boolean
  inputBinding:
    prefix: -R
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
- id: match
  doc: Match score [2]
  type: double
  inputBinding:
    prefix: --match
- id: mismatch
  doc: Mismatch score [-5]
  type: double
  inputBinding:
    prefix: --mismatch
- id: gap_open
  doc: Gap open score [-5]
  type: double
  inputBinding:
    prefix: --gap-open
- id: gap_extend_max
  doc: Gap open extend max [-5]
  type: double
  inputBinding:
    prefix: --gap-extend-max
- id: gap_extend_min
  doc: Gap open extend min [-1]
  type: double
  inputBinding:
    prefix: --gap-extend-min
- id: gap_decay
  doc: Gap extend decay [0.15]
  type: double
  inputBinding:
    prefix: --gap-decay
- id: k
  doc: <10-15>,  --kmer-length <10-15> K-mer length in bases [13]
  type: boolean
  inputBinding:
    prefix: -k
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
outputs: []
cwlVersion: v1.1
baseCommand:
- ngmlr
