class: CommandLineTool
id: ../../../NGmerge.cwl
inputs:
- id: file_input_forward
  doc: <file>       Input FASTQ file with reads from forward direction
  type: boolean
  inputBinding:
    prefix: '-1'
- id: file_input_reverse
  doc: <file>       Input FASTQ file with reads from reverse direction
  type: boolean
  inputBinding:
    prefix: '-2'
- id: file_output_fastq
  doc: "<file>       Output FASTQ file(s): - in 'stitch' mode (def.), the file of\
    \ merged reads - in 'adapter-removal' mode (-a), the output files will be <file>_1.fastq\
    \ and <file>_2.fastq"
  type: boolean
  inputBinding:
    prefix: -o
- id: int_minimum_overlap_pairedend
  doc: <int>        Minimum overlap of the paired-end reads (def. 20)
  type: boolean
  inputBinding:
    prefix: -m
- id: float_mismatches_allow
  doc: <float>      Mismatches to allow in the overlapped region (a fraction of the
    overlap length; def. 0.10)
  type: boolean
  inputBinding:
    prefix: -p
- id: use_mode_also
  doc: Use 'adapter-removal' mode (also sets -d option)
  type: boolean
  inputBinding:
    prefix: -a
- id: option_check_dovetailing
  doc: Option to check for dovetailing (with 3' overhangs)
  type: boolean
  inputBinding:
    prefix: -d
- id: int_minimum_overlap_def
  doc: <int>        Minimum overlap of dovetailed alignments (def. 50)
  type: boolean
  inputBinding:
    prefix: -e
- id: option_produce_read
  doc: Option to produce shortest stitched read
  type: boolean
  inputBinding:
    prefix: -s
- id: file_log_file_stitching
  doc: <file>       Log file for stitching results of each read pair
  type: boolean
  inputBinding:
    prefix: -l
- id: file_fastq_files
  doc: <file>       FASTQ files for reads that failed stitching (output as <file>_1.fastq
    and <file>_2.fastq)
  type: boolean
  inputBinding:
    prefix: -f
- id: file_log_file_dovetailed
  doc: <file>       Log file for dovetailed reads (adapter sequences)
  type: boolean
  inputBinding:
    prefix: -c
- id: file_log_file_formatted
  doc: <file>       Log file for formatted alignments of merged reads
  type: boolean
  inputBinding:
    prefix: -j
- id: z_slash_y
  doc: Option to gzip (-z) or not (-y) FASTQ output(s)
  type: boolean
  inputBinding:
    prefix: -z/-y
- id: option_produce_outputs
  doc: Option to produce interleaved FASTQ output(s)
  type: boolean
  inputBinding:
    prefix: -i
- id: file_use_given
  doc: <file>       Use given error profile for merged qual scores
  type: boolean
  inputBinding:
    prefix: -w
- id: use_method_merged
  doc: Use 'fastq-join' method for merged qual scores
  type: boolean
  inputBinding:
    prefix: -g
- id: int_quality_offset
  doc: <int>        FASTQ quality offset (def. 33)
  type: boolean
  inputBinding:
    prefix: -q
- id: int_maximum_input
  doc: <int>        Maximum input quality score (0-based; def. 40)
  type: boolean
  inputBinding:
    prefix: -u
- id: int_number_threads
  doc: <int>        Number of threads to use (def. 1)
  type: boolean
  inputBinding:
    prefix: -n
- id: option_print_updatescounts
  doc: Option to print status updates/counts to stderr
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- NGmerge
