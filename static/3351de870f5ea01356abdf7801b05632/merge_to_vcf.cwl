class: CommandLineTool
id: merge_to_vcf.cwl
inputs:
- id: o
  doc: '[ --max_offset ] arg (=100)        Maximum allowed distance between split  read
    and CLEVER call.'
  type: boolean
  inputBinding:
    prefix: -o
- id: z
  doc: '[ --max_length_diff ] arg (=20)    Maximum allowed length difference  between
    split read and CLEVER call.'
  type: boolean
  inputBinding:
    prefix: -z
- id: o
  doc: '[ --max_offset_split ] arg (=20)   Maximum allowed distance between two  split
    read calls.'
  type: boolean
  inputBinding:
    prefix: -O
- id: z
  doc: '[ --max_length_diff_split ] arg (=5) Maximum allowed length difference  between
    two split read calls.'
  type: boolean
  inputBinding:
    prefix: -Z
- id: l
  doc: '[ --min_length ] arg (=10)         Minimum length of variations to be  written.'
  type: boolean
  inputBinding:
    prefix: -l
- id: i_size_mean
  doc: (=-1)                Mean length of internal segments. If  given and BAM files
    are present, number of supporting internal segment size  reads is determined.
  type: string
  inputBinding:
    prefix: --isize_mean
- id: i_size_stddev
  doc: (=-1)              Standard deviation of internal  segments.
  type: string
  inputBinding:
    prefix: --isize_stddev
- id: w
  doc: '[ --bam_window ] arg (=1000)       Number of nucleotides to look to the  right/to
    the left of deletions in BAM  files to find relevant alignments.'
  type: boolean
  inputBinding:
    prefix: -w
- id: g
  doc: '[ --genotype ]                     Perform genotyping.'
  type: boolean
  inputBinding:
    prefix: -G
- id: t
  doc: '[ --trio_aware ]                   Perform trio-aware genotyping.'
  type: boolean
  inputBinding:
    prefix: -T
- id: d
  doc: '[ --denovo_threshold ] arg (=1.0000000000000001e-05) Threshold for de novo
    calls (in trio  mode)'
  type: boolean
  inputBinding:
    prefix: -d
- id: b
  doc: '[ --split_reads_from_bam ]         Read split read evidence from BAM file.'
  type: boolean
  inputBinding:
    prefix: -b
- id: m
  doc: '[ --mapq ] arg (=0)                Minimum MAPQ. Alignments with lower  MAPQ
    are ignored.'
  type: boolean
  inputBinding:
    prefix: -m
- id: p
  doc: '[ --variant_prior ] arg (=0.5)     Prior believe in a variant (given that  the
    locus is under investigation).'
  type: boolean
  inputBinding:
    prefix: -p
- id: i
  doc: '[ --gt_only_insert ]               Do genotyping only based on  internal-segment-type
    alignments.'
  type: boolean
  inputBinding:
    prefix: -I
- id: s
  doc: '[ --gt_only_split ]                Do genotyping only based on split-type  alignments.'
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- merge-to-vcf
