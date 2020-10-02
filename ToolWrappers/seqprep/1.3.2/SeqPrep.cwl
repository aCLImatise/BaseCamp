class: CommandLineTool
id: SeqPrep.cwl
inputs:
- id: in_second_read_input
  doc: "-r <second read input fastq filename>\n-1 <first read output fastq filename>\n\
    -2 <second read output fastq filename>"
  type: File
  inputBinding:
    prefix: -f
- id: in_spinner__first
  doc: "the spinner?\n-3 <first read discarded fastq filename>\n-4 <second read discarded\
    \ fastq filename>\n-h Display this help message and exit (also works with no args)\n\
    -6 Input sequence is in phred+64 rather than phred+33 format, the output will\
    \ still be phred+33\n-q <Quality score cutoff for mismatches to be counted in\
    \ overlap; default = 13>\n-L <Minimum length of a trimmed or merged read to print\
    \ it; default = 30>"
  type: long
  inputBinding:
    prefix: -S
- id: in_forward_read_sequence
  doc: "<forward read primer/adapter sequence to trim as it would appear at the end\
    \ of a read (recommend about 20bp of this)\n(should validate by grepping a file);\
    \ default (genomic non-multiplexed adapter1) = AGATCGGAAGAGCACACGTC>"
  type: boolean
  inputBinding:
    prefix: -A
- id: in_reverse_read_sequence
  doc: "<reverse read primer/adapter sequence to trim as it would appear at the end\
    \ of a read (recommend about 20bp of this)\n(should validate by grepping a file);\
    \ default (genomic non-multiplexed adapter2) = AGATCGGAAGAGCGTCGTGT>"
  type: boolean
  inputBinding:
    prefix: -B
- id: in_minimum_overall_base
  doc: <minimum overall base pair overlap with adapter sequence to trim; default =
    10>
  type: boolean
  inputBinding:
    prefix: -O
- id: in_maximum_fraction_mismatching
  doc: <maximum fraction of good quality mismatching bases for primer/adapter overlap;
    default = 0.020000>
  type: boolean
  inputBinding:
    prefix: -M
- id: in_minimum_fraction_matching
  doc: <minimum fraction of matching bases for primer/adapter overlap; default = 0.870000>
  type: boolean
  inputBinding:
    prefix: -N
- id: in_adapter_alignment_bandwidth
  doc: <adapter alignment band-width; default = 50>
  type: boolean
  inputBinding:
    prefix: -b
- id: in_adapter_alignment_default
  doc: <adapter alignment gap-open; default = 8>
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_adapter_alignment_gapextension
  doc: <adapter alignment gap-extension; default = 2>
  type: boolean
  inputBinding:
    prefix: -t
- id: in_adapter_alignment_gapend
  doc: <adapter alignment gap-end; default = 2>
  type: boolean
  inputBinding:
    prefix: -e
- id: in_adapter_alignment_minimum
  doc: <adapter alignment minimum local alignment score cutoff [roughly (2*num_hits)
    - (num_gaps*gap_open) - (num_gaps*gap_close) - (gap_len*gap_extend) - (2*num_mismatches)];
    default = 26>
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_read_alignment_bandwidth_default
  doc: <read alignment band-width; default = 50>
  type: boolean
  inputBinding:
    prefix: -w
- id: in_read_alignment_gapopen_default
  doc: <read alignment gap-open; default = 26>
  type: boolean
  inputBinding:
    prefix: -W
- id: in_read_alignment_gapextension_default
  doc: <read alignment gap-extension; default = 9>
  type: boolean
  inputBinding:
    prefix: -p
- id: in_read_alignment_gapend_default
  doc: <read alignment gap-end; default = 5>
  type: boolean
  inputBinding:
    prefix: -P
- id: in_read_alignment_cutoff_default
  doc: <read alignment maximum fraction gap cutoff; default = 0.125000>
  type: boolean
  inputBinding:
    prefix: -X
- id: in_use_mask_n
  doc: <use mask; N will replace adapters>
  type: boolean
  inputBinding:
    prefix: -z
- id: in_maximum_quality_score
  doc: "<maximum quality score in output ((phred 33) default = ']' )>\n-g <print overhang\
    \ when adapters are present and stripped (use this if reads are different length)>\n\
    -s <perform merging and output the merged reads to this file>\n-E <write pretty\
    \ alignments to this file for visual Examination>\n-x <max number of pretty alignments\
    \ to write (if -E provided); default = 10000>\n-o <minimum overall base pair overlap\
    \ to merge two reads; default = 15>\n-m <maximum fraction of good quality mismatching\
    \ bases to overlap reads; default = 0.020000>\n-n <minimum fraction of matching\
    \ bases to overlap reads; default = 0.900000>\n"
  type: boolean
  inputBinding:
    prefix: -y
- id: in_required
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_args
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
- SeqPrep
