class: CommandLineTool
id: biscuit_epiread.cwl
inputs:
- id: in_bed_input_snp
  doc: bed input for SNP display in epiread output [no SNP]
  type: boolean
  inputBinding:
    prefix: -B
- id: in_region_optional_specified
  doc: region (optional, if not specified the whole bam will be processed).
  type: boolean
  inputBinding:
    prefix: -g
- id: in_step_window_dispatching
  doc: step of window dispatching [100000].
  type: boolean
  inputBinding:
    prefix: -s
- id: in_number_of_threads
  doc: number of threads [3].
  type: boolean
  inputBinding:
    prefix: -q
- id: in_output_file
  doc: output file [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: in_pairwise_mode
  doc: pairwise mode [off]
  type: boolean
  inputBinding:
    prefix: -P
- id: in_nomeseq_mode
  doc: NOMe-seq mode [off]
  type: boolean
  inputBinding:
    prefix: -N
- id: in_verbose_print_info
  doc: verbose (print additional info for diagnosis).
  type: boolean
  inputBinding:
    prefix: -v
- id: in_minimum_mapping_quality
  doc: minimum mapping quality [40].
  type: boolean
  inputBinding:
    prefix: -m
- id: in_max_cytosine_retention
  doc: max cytosine retention in a read [999999].
  type: boolean
  inputBinding:
    prefix: -t
- id: in_minimum_read_length
  doc: minimum read length [10].
  type: boolean
  inputBinding:
    prefix: -l
- id: in_filtering_secondary_mapping
  doc: NO filtering secondary mapping.
  type: boolean
  inputBinding:
    prefix: -c
- id: in_no_filtering_duplicate
  doc: NO filtering of duplicate.
  type: boolean
  inputBinding:
    prefix: -u
- id: in_filtering_improper_bamfproperpair
  doc: NO filtering of improper pair (!BAM_FPROPER_PAIR).
  type: boolean
  inputBinding:
    prefix: -p
- id: in_maximum_nm_tag
  doc: maximum NM tag [999999].
  type: boolean
  inputBinding:
    prefix: -n
- id: in_epi_read
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output file [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- biscuit
- epiread
