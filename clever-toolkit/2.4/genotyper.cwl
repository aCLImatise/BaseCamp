#!/usr/bin/env cwl-runner

baseCommand:
- genotyper
class: CommandLineTool
cwlVersion: v1.0
id: genotyper
inputs:
- doc: '[ --max_offset_split ] arg (=10)   Maximum allowed distance between two  split
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
- doc: '[ --split_border_distance ] arg (=12) Minimum distance of variant breakpoint  to
    start/end of alignment in order to  use read.'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '[ --bam_window ] arg (=1000)       Number of nucleotides to look to the  right/to
    the left of deletions in BAM  files to find relevant alignments.'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: '[ --denovo_threshold ] arg (=1.0000000000000001e-05) Threshold for de novo
    calls (in  trio/quartet mode)'
  id: d
  inputBinding:
    prefix: -d
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
- doc: (=20)                    Minimum genotype quality (GQ). If GQ is below threshold,
    then it is not  reported and "./." is output instead.  However, if distinction
    absent vs.  present is possible, then "1/." is  reported, see option --gq-present.
  id: min_gq
  inputBinding:
    prefix: --min_gq
  type: string
- doc: (=5)               Minimum physical coverage to determine  genotype if less,
    then "./." is output  for this deletion/individual  (default=5).
  id: min_phys_cov
  inputBinding:
    prefix: --min_phys_cov
  type: string
- doc: (=20)                In case genotype cannot be called (due  to bad GQ or due
    to insufficient  physical coverage), then report  genotype "1/." (i.e. "present")
    if  phred score of genotype "0/0" is above  this threshold.
  id: gq_present
  inputBinding:
    prefix: --gq-present
  type: string
- doc: Omit lines where variant is absent in  all samples.
  id: omit_absent
  inputBinding:
    prefix: --omit-absent
  type: boolean
- doc: By default indels with most split read  support genotyped first, giving them  precedence
    over indels with less  support. This option disables this and  genotypes indels
    as they appear in the  input.
  id: dont_prioritize
  inputBinding:
    prefix: --dont-prioritize
  type: boolean
- doc: '(=9999)       Maximum length of deletion for which  the REF allele is output
    to the VCF.  Above that, the <DEL> notation is used  (defaul: 9999).'
  id: max_output_length
  inputBinding:
    prefix: --max-output-length
  type: string
