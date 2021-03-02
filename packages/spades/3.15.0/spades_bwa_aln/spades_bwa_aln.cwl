class: CommandLineTool
id: spades_bwa_aln.cwl
inputs:
- id: in_max_diff_int
  doc: 'max #diff (int) or missing prob under 0.02 err rate (float) [0.04]'
  type: long?
  inputBinding:
    prefix: -n
- id: in_maximum_number_fraction
  doc: maximum number or fraction of gap opens [1]
  type: long?
  inputBinding:
    prefix: -o
- id: in_maximum_number_gap
  doc: maximum number of gap extensions, -1 for disabling long gaps [-1]
  type: long?
  inputBinding:
    prefix: -e
- id: in_put_indel_int
  doc: do not put an indel within INT bp towards the ends [5]
  type: long?
  inputBinding:
    prefix: -i
- id: in_maximum_occurrences_extending
  doc: maximum occurrences for extending a long deletion [10]
  type: long?
  inputBinding:
    prefix: -d
- id: in_seed_length
  doc: seed length [32]
  type: long?
  inputBinding:
    prefix: -l
- id: in_maximum_differences_seed
  doc: maximum differences in the seed [2]
  type: long?
  inputBinding:
    prefix: -k
- id: in_maximum_entries_queue
  doc: maximum entries in the queue [2000000]
  type: long?
  inputBinding:
    prefix: -m
- id: in_number_of_threads
  doc: number of threads [1]
  type: long?
  inputBinding:
    prefix: -t
- id: in_mismatch_penalty
  doc: mismatch penalty [3]
  type: long?
  inputBinding:
    prefix: -M
- id: in_gap_open_penalty
  doc: gap open penalty [11]
  type: long?
  inputBinding:
    prefix: -O
- id: in_gap_extension_penalty
  doc: gap extension penalty [4]
  type: long?
  inputBinding:
    prefix: -E
- id: in_stop_searching_are
  doc: stop searching when there are >INT equally best hits [30]
  type: long?
  inputBinding:
    prefix: -R
- id: in_quality_threshold_read
  doc: quality threshold for read trimming down to 35bp [0]
  type: long?
  inputBinding:
    prefix: -q
- id: in_file_write_output
  doc: file to write output to instead of stdout
  type: File?
  inputBinding:
    prefix: -f
- id: in_length_of_barcode
  doc: length of barcode
  type: long?
  inputBinding:
    prefix: -B
- id: in_logscaled_gap_penalty
  doc: log-scaled gap penalty for long deletions
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_noniterative_mode_search
  doc: 'non-iterative mode: search for all n-difference hits (slooow)'
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_input_illumina_format
  doc: the input is in the Illumina 1.3+ FASTQ-like format
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_input_read_file
  doc: the input read file is in the BAM format
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_use_reads_effective
  doc: use single-end reads only (effective with -b)
  type: boolean?
  inputBinding:
    prefix: '-0'
- id: in_use_st_read
  doc: use the 1st read in a pair (effective with -b)
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_use_nd_read
  doc: use the 2nd read in a pair (effective with -b)
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_filter_casavafiltered_sequences
  doc: filter Casava-filtered sequences
  type: boolean?
  inputBinding:
    prefix: -Y
- id: in_bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_aln
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_write_output
  doc: file to write output to instead of stdout
  type: File?
  outputBinding:
    glob: $(inputs.in_file_write_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spades:3.15.0--h633aebb_0
cwlVersion: v1.1
baseCommand:
- spades-bwa
- aln
