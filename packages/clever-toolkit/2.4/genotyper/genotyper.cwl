class: CommandLineTool
id: genotyper.cwl
inputs:
- id: in_arg_maximum_allowed_read
  doc: "[ --max_offset_split ] arg (=10)   Maximum allowed distance between two\n\
    split read calls."
  type: boolean
  inputBinding:
    prefix: -O
- id: in_arg_maximum_allowed_calls
  doc: "[ --max_length_diff_split ] arg (=5)\nMaximum allowed length difference\n\
    between two split read calls."
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_arg_minimum_distance
  doc: "[ --split_border_distance ] arg (=12)\nMinimum distance of variant breakpoint\n\
    to start/end of alignment in order to\nuse read."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_arg_number_look
  doc: "[ --bam_window ] arg (=1000)       Number of nucleotides to look to the\n\
    right/to the left of deletions in BAM\nfiles to find relevant alignments."
  type: boolean
  inputBinding:
    prefix: -w
- id: in_arg_de_novo
  doc: "[ --denovo_threshold ] arg (=1.0000000000000001e-05)\nThreshold for de novo\
    \ calls (in\ntrio/quartet mode)"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_arg_minimum_alignments
  doc: "[ --mapq ] arg (=0)                Minimum MAPQ. Alignments with lower\nMAPQ\
    \ are ignored."
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_prior_believe
  doc: "[ --variant_prior ] arg (=0.5)     Prior believe in a variant (given that\n\
    the locus is under investigation)."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_genotyping_only_based_oninternalsegmenttype
  doc: "[ --gt_only_insert ]               Do genotyping only based on\ninternal-segment-type\
    \ alignments."
  type: boolean
  inputBinding:
    prefix: -I
- id: in_genotyping_only_based_splittype
  doc: '[ --gt_only_split ]                Do genotyping only based on split-type'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_min_phys_cov
  doc: "(=5)               Minimum physical coverage to determine\ngenotype if less,\
    \ then \"./.\" is output\nfor this deletion/individual\n(default=5)."
  type: long
  inputBinding:
    prefix: --min_phys_cov
- id: in_gq_present
  doc: "(=20)                In case genotype cannot be called (due\nto bad GQ or\
    \ due to insufficient\nphysical coverage), then report\ngenotype \"1/.\" (i.e.\
    \ \"present\") if\nphred score of genotype \"0/0\" is above\nthis threshold."
  type: long
  inputBinding:
    prefix: --gq-present
- id: in_omit_absent
  doc: "Omit lines where variant is absent in\nall samples."
  type: boolean
  inputBinding:
    prefix: --omit-absent
- id: in_dont_prioritize
  doc: "By default indels with most split read\nsupport genotyped first, giving them\n\
    precedence over indels with less\nsupport. This option disables this and\ngenotypes\
    \ indels as they appear in the\ninput."
  type: boolean
  inputBinding:
    prefix: --dont-prioritize
- id: in_max_output_length
  doc: "(=9999)       Maximum length of deletion for which\nthe REF allele is output\
    \ to the VCF.\nAbove that, the <DEL> notation is used\n(defaul: 9999).\n"
  type: long
  inputBinding:
    prefix: --max-output-length
- id: in_alignments_dot
  doc: --min_gq arg (=20)                    Minimum genotype quality (GQ). If GQ
    is
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genotyper
