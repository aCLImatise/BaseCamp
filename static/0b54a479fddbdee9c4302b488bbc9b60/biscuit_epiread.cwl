class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/biscuit_epiread.cwl
inputs:
- id: bed_input_snp
  doc: bed input for SNP display in epiread output [no SNP]
  type: boolean
  inputBinding:
    prefix: -B
- id: region_optional_specified
  doc: region (optional, if not specified the whole bam will be processed).
  type: boolean
  inputBinding:
    prefix: -g
- id: step_window_dispatching
  doc: step of window dispatching [100000].
  type: boolean
  inputBinding:
    prefix: -s
- id: number_of_threads
  doc: number of threads [3].
  type: boolean
  inputBinding:
    prefix: -q
- id: output_file
  doc: output file [stdout]
  type: boolean
  inputBinding:
    prefix: -o
- id: pairwise_mode
  doc: pairwise mode [off]
  type: boolean
  inputBinding:
    prefix: -P
- id: nomeseq_mode
  doc: NOMe-seq mode [off]
  type: boolean
  inputBinding:
    prefix: -N
- id: verbose_print_additional
  doc: verbose (print additional info for diagnosis).
  type: boolean
  inputBinding:
    prefix: -v
- id: minimum_mapping_quality
  doc: minimum mapping quality [40].
  type: boolean
  inputBinding:
    prefix: -m
- id: max_cytosine_retention
  doc: max cytosine retention in a read [999999].
  type: boolean
  inputBinding:
    prefix: -t
- id: minimum_read_length
  doc: minimum read length [10].
  type: boolean
  inputBinding:
    prefix: -l
- id: filtering_secondary_mapping
  doc: NO filtering secondary mapping.
  type: boolean
  inputBinding:
    prefix: -c
- id: no_filtering_duplicate
  doc: NO filtering of duplicate.
  type: boolean
  inputBinding:
    prefix: -u
- id: filtering_improper_bamfproperpair
  doc: NO filtering of improper pair (!BAM_FPROPER_PAIR).
  type: boolean
  inputBinding:
    prefix: -p
- id: maximum_nm_tag
  doc: maximum NM tag [999999].
  type: boolean
  inputBinding:
    prefix: -n
- id: epi_read
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- biscuit
- epiread
