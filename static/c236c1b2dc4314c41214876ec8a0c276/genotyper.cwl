class: CommandLineTool
id: genotyper.cwl
inputs:
- id: o
  doc: '[ --max_offset_split ] arg (=10)   Maximum allowed distance between two  split
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
- id: b
  doc: '[ --split_border_distance ] arg (=12) Minimum distance of variant breakpoint  to
    start/end of alignment in order to  use read.'
  type: boolean
  inputBinding:
    prefix: -b
- id: w
  doc: '[ --bam_window ] arg (=1000)       Number of nucleotides to look to the  right/to
    the left of deletions in BAM  files to find relevant alignments.'
  type: boolean
  inputBinding:
    prefix: -w
- id: d
  doc: '[ --denovo_threshold ] arg (=1.0000000000000001e-05) Threshold for de novo
    calls (in  trio/quartet mode)'
  type: boolean
  inputBinding:
    prefix: -d
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
- id: min_gq
  doc: (=20)                    Minimum genotype quality (GQ). If GQ is below threshold,
    then it is not  reported and "./." is output instead.  However, if distinction
    absent vs.  present is possible, then "1/." is  reported, see option --gq-present.
  type: string
  inputBinding:
    prefix: --min_gq
- id: min_phys_cov
  doc: (=5)               Minimum physical coverage to determine  genotype if less,
    then "./." is output  for this deletion/individual  (default=5).
  type: string
  inputBinding:
    prefix: --min_phys_cov
- id: gq_present
  doc: (=20)                In case genotype cannot be called (due  to bad GQ or due
    to insufficient  physical coverage), then report  genotype "1/." (i.e. "present")
    if  phred score of genotype "0/0" is above  this threshold.
  type: string
  inputBinding:
    prefix: --gq-present
- id: omit_absent
  doc: Omit lines where variant is absent in  all samples.
  type: boolean
  inputBinding:
    prefix: --omit-absent
- id: dont_prioritize
  doc: By default indels with most split read  support genotyped first, giving them  precedence
    over indels with less  support. This option disables this and  genotypes indels
    as they appear in the  input.
  type: boolean
  inputBinding:
    prefix: --dont-prioritize
- id: max_output_length
  doc: '(=9999)       Maximum length of deletion for which  the REF allele is output
    to the VCF.  Above that, the <DEL> notation is used  (defaul: 9999).'
  type: string
  inputBinding:
    prefix: --max-output-length
outputs: []
cwlVersion: v1.1
baseCommand:
- genotyper
