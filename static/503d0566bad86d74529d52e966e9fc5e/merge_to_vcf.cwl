class: CommandLineTool
id: merge_to_vcf.cwl
inputs:
- id: in_arg_maximum_allowed_distance_splitread
  doc: "[ --max_offset ] arg (=100)        Maximum allowed distance between split\n\
    read and CLEVER call."
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_arg_maximum_allowed_read
  doc: "[ --max_length_diff ] arg (=20)    Maximum allowed length difference\nbetween\
    \ split read and CLEVER call."
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_arg_maximum_allowed_distance_read
  doc: "[ --max_offset_split ] arg (=20)   Maximum allowed distance between two\n\
    split read calls."
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_arg_maximum_allowed_differencebetween
  doc: "[ --max_length_diff_split ] arg (=5)\nMaximum allowed length difference\n\
    between two split read calls."
  type: boolean?
  inputBinding:
    prefix: -Z
- id: in_arg_minimum_length
  doc: '[ --min_length ] arg (=10)         Minimum length of variations to be'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_i_size_stddev
  doc: (=-1)              Standard deviation of internal
  type: long?
  inputBinding:
    prefix: --isize_stddev
- id: in__perform_genotyping
  doc: '[ --genotype ]                     Perform genotyping.'
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_perform_trioaware_genotyping
  doc: '[ --trio_aware ]                   Perform trio-aware genotyping.'
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_arg_calls_triomode
  doc: "[ --denovo_threshold ] arg (=1.0000000000000001e-05)\nThreshold for de novo\
    \ calls (in trio\nmode)"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_read_split_read
  doc: '[ --split_reads_from_bam ]         Read split read evidence from BAM file.'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_mapq_alignments
  doc: "[ --mapq ] arg (=0)                Minimum MAPQ. Alignments with lower\nMAPQ\
    \ are ignored."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_prior_believe
  doc: "[ --variant_prior ] arg (=0.5)     Prior believe in a variant (given that\n\
    the locus is under investigation)."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_genotyping_based_alignments
  doc: "[ --gt_only_insert ]               Do genotyping only based on\ninternal-segment-type\
    \ alignments."
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_genotyping_only_based
  doc: "[ --gt_only_split ]                Do genotyping only based on split-type\n\
    alignments.\n"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_written_dot
  doc: '--isize_mean arg (=-1)                Mean length of internal segments. If '
  type: string
  inputBinding:
    position: 0
- id: in_segments_dot
  doc: '-w [ --bam_window ] arg (=1000)       Number of nucleotides to look to the '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- merge-to-vcf
