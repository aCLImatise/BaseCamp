class: CommandLineTool
id: NGmerge.cwl
inputs:
- id: in_file_file_forward
  doc: <file>       Input FASTQ file with reads from forward direction
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_file_file_reverse
  doc: <file>       Input FASTQ file with reads from reverse direction
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_file_output_fastq
  doc: "<file>       Output FASTQ file(s):\n- in 'stitch' mode (def.), the file of\
    \ merged reads\n- in 'adapter-removal' mode (-a), the output files\nwill be <file>_1.fastq\
    \ and <file>_2.fastq"
  type: File?
  inputBinding:
    prefix: -o
- id: in_int_overlap_reads
  doc: <int>        Minimum overlap of the paired-end reads (def. 20)
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_float_mismatches_allow
  doc: "<float>      Mismatches to allow in the overlapped region\n(a fraction of\
    \ the overlap length; def. 0.10)"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_use_mode_also
  doc: Use 'adapter-removal' mode (also sets -d option)
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_option_check_overhangs
  doc: Option to check for dovetailing (with 3' overhangs)
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_int_minimum_overlap
  doc: <int>        Minimum overlap of dovetailed alignments (def. 50)
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_option_produce_read
  doc: Option to produce shortest stitched read
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_file_log_file_stitching
  doc: <file>       Log file for stitching results of each read pair
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_file_fastq_files
  doc: "<file>       FASTQ files for reads that failed stitching\n(output as <file>_1.fastq\
    \ and <file>_2.fastq)"
  type: File?
  inputBinding:
    prefix: -f
- id: in_file_log_file_reads
  doc: <file>       Log file for dovetailed reads (adapter sequences)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_file_log_file_formatted
  doc: <file>       Log file for formatted alignments of merged reads
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_option_gzip_z
  doc: Option to gzip (-z) or not (-y) FASTQ output(s)
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_option_produce_outputs
  doc: Option to produce interleaved FASTQ output(s)
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_file_use_given
  doc: <file>       Use given error profile for merged qual scores
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_use_method_merged
  doc: Use 'fastq-join' method for merged qual scores
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_int_offset_def
  doc: <int>        FASTQ quality offset (def. 33)
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_int_score_based
  doc: <int>        Maximum input quality score (0-based; def. 40)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_int_number_use
  doc: <int>        Number of threads to use (def. 1)
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_option_print_status
  doc: Option to print status updates/counts to stderr
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_output_fastq
  doc: "<file>       Output FASTQ file(s):\n- in 'stitch' mode (def.), the file of\
    \ merged reads\n- in 'adapter-removal' mode (-a), the output files\nwill be <file>_1.fastq\
    \ and <file>_2.fastq"
  type: File?
  outputBinding:
    glob: $(inputs.in_file_output_fastq)
- id: out_file_fastq_files
  doc: "<file>       FASTQ files for reads that failed stitching\n(output as <file>_1.fastq\
    \ and <file>_2.fastq)"
  type: File?
  outputBinding:
    glob: $(inputs.in_file_fastq_files)
hints: []
cwlVersion: v1.1
baseCommand:
- NGmerge
