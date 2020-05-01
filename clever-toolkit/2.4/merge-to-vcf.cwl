#!/usr/bin/env cwl-runner

baseCommand:
- merge-to-vcf
class: CommandLineTool
cwlVersion: v1.0
id: merge-to-vcf
inputs:
- doc: '[ --max_offset ] arg (=100)        Maximum allowed distance between split  read
    and CLEVER call.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --max_length_diff ] arg (=20)    Maximum allowed length difference  between
    split read and CLEVER call.'
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: '[ --max_offset_split ] arg (=20)   Maximum allowed distance between two  split
    read calls.'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: '[ --max_length_diff_split ] arg (=5) Maximum allowed length difference  between
    two split read calls.'
  id: z
  inputBinding:
    prefix: -Z
  type: boolean
- doc: '[ --min_length ] arg (=10)         Minimum length of variations to be  written.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: (=-1)                Mean length of internal segments. If  given and BAM files
    are present, number of supporting internal segment size  reads is determined.
  id: i_size_mean
  inputBinding:
    prefix: --isize_mean
  type: string
- doc: (=-1)              Standard deviation of internal  segments.
  id: i_size_stddev
  inputBinding:
    prefix: --isize_stddev
  type: string
- doc: '[ --bam_window ] arg (=1000)       Number of nucleotides to look to the  right/to
    the left of deletions in BAM  files to find relevant alignments.'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: '[ --genotype ]                     Perform genotyping.'
  id: g
  inputBinding:
    prefix: -G
  type: boolean
- doc: '[ --trio_aware ]                   Perform trio-aware genotyping.'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: '[ --denovo_threshold ] arg (=1.0000000000000001e-05) Threshold for de novo
    calls (in trio  mode)'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '[ --split_reads_from_bam ]         Read split read evidence from BAM file.'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '[ --mapq ] arg (=0)                Minimum MAPQ. Alignments with lower  MAPQ
    are ignored.'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '[ --variant_prior ] arg (=0.5)     Prior believe in a variant (given that  the
    locus is under investigation).'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --gt_only_insert ]               Do genotyping only based on  internal-segment-type
    alignments.'
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: '[ --gt_only_split ]                Do genotyping only based on split-type  alignments.'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
