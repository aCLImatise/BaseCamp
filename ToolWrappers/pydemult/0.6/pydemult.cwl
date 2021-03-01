class: CommandLineTool
id: pydemult.cwl
inputs:
- id: in_fast_q
  doc: FASTQ file for demultiplexing.
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_sample_sheet
  doc: Samplesheet containing barcodes and samplenames
  type: string?
  inputBinding:
    prefix: --samplesheet
- id: in_column_separator
  doc: Separator that is used in samplesheet
  type: string?
  inputBinding:
    prefix: --column-separator
- id: in_barcode_column
  doc: Name of the column containing barcodes
  type: string?
  inputBinding:
    prefix: --barcode-column
- id: in_sample_column
  doc: Name of the column containing sample names
  type: string?
  inputBinding:
    prefix: --sample-column
- id: in_barcode_regex
  doc: "Regular expression to parse cell barcode (CB) and UMIs\n(UMI) from read names"
  type: string?
  inputBinding:
    prefix: --barcode-regex
- id: in_edit_distance
  doc: Maximum allowed edit distance for barcodes
  type: long?
  inputBinding:
    prefix: --edit-distance
- id: in_edit_alphabet
  doc: The alphabet that is used to created edited barcodes
  type: string?
  inputBinding:
    prefix: --edit-alphabet
- id: in_buffer_size
  doc: "Buffer size for the FASTQ reader (in Bytes). Must be\nlarge enough to contain\
    \ the largest entry."
  type: long?
  inputBinding:
    prefix: --buffer-size
- id: in_output
  doc: Output directory to write individual fastq files to.
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_output_file_suffix
  doc: ".fastq.gz\nA suffix to append to individual fastq files."
  type: File?
  inputBinding:
    prefix: --output-file-suffix
- id: in_write_unmatched
  doc: Write reads with unmatched barcodes into
  type: boolean?
  inputBinding:
    prefix: --write-unmatched
- id: in_threads
  doc: Number of threads to use for multiprocessing.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_writer_threads
  doc: Number of threads to use for writing
  type: long?
  inputBinding:
    prefix: --writer-threads
- id: in_unmatched_dot_fast_q_do_tgz
  doc: --keep-empty          Keep empty sequences in demultiplexed output files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory to write individual fastq files to.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_file_suffix
  doc: ".fastq.gz\nA suffix to append to individual fastq files."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_suffix)
hints: []
cwlVersion: v1.1
baseCommand:
- pydemult
