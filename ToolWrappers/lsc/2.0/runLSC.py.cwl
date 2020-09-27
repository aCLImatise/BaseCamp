class: CommandLineTool
id: runLSC.py.cwl
inputs:
- id: in_long_reads
  doc: "FASTAFILE Long reads to correct. Required in mode 0 or\n1. (default: None)"
  type: long
  inputBinding:
    prefix: --long_reads
- id: in_short_reads
  doc: "[SHORT_READS [SHORT_READS ...]]\nFASTA/FASTQ FILE Short reads used to correct\
    \ the long\nreads. Can be multiple files. If choice is cps reads,\nthen there\
    \ must be 2 files, the cps and the idx file\nfollowing --short reads. Required\
    \ in mode 0 or 1.\n(default: None)"
  type: boolean
  inputBinding:
    prefix: --short_reads
- id: in_short_read_file_type
  doc: 'Short read file type (default: fa)'
  type: string
  inputBinding:
    prefix: --short_read_file_type
- id: in_threads
  doc: 'Number of threads (Default = cpu_count) (default: 0)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_tempdir
  doc: "FOLDERNAME where temporary files can be placed\n(default: /tmp)"
  type: string
  inputBinding:
    prefix: --tempdir
- id: in_specific_tempdir
  doc: "FOLDERNAME of exactly where to place temproary\nfolders. Required in mode\
    \ 1, 2 or 3. Recommended for\nany run where you may want to look back at\nintermediate\
    \ files. (default: None)"
  type: long
  inputBinding:
    prefix: --specific_tempdir
- id: in_output
  doc: "FOLDERNAME where output is to be written. Required in\nmode 0 or 3. (default:\
    \ None)"
  type: long
  inputBinding:
    prefix: --output
- id: in_mode
  doc: "0: run through, 1: Prepare homopolymer compressed long\nand short reads. 2:\
    \ Execute correction on batches of\nlong reads. Can be superseded by --parallelized_mode_2\n\
    where you will only execute a single batch. 3: Combine\ncorrected batches into\
    \ a final output folder.\n(default: 0)"
  type: Directory
  inputBinding:
    prefix: --mode
- id: in_parallelized_mode_two
  doc: "Mode 2, but you specify a sigle batch to execute.\n(default: None)"
  type: long
  inputBinding:
    prefix: --parallelized_mode_2
- id: in_aligner
  doc: "Aligner choice. hisat parameters have not been\noptimized, so we recommend\
    \ bowtie2. (default: bowtie2)"
  type: string
  inputBinding:
    prefix: --aligner
- id: in_sort_mem_max
  doc: '-S option for memory in unix sort (default: None)'
  type: long
  inputBinding:
    prefix: --sort_mem_max
- id: in_min_number_of_non_n
  doc: "Minimum number of non-N characters in the compressed\nread (default: 40)"
  type: long
  inputBinding:
    prefix: --minNumberofNonN
- id: in_max_n
  doc: "Maximum number of Ns in the compressed read (default:\nNone)"
  type: long
  inputBinding:
    prefix: --maxN
- id: in_error_rate_threshold
  doc: "Maximum percent of errors in a read to use the\nalignment (default: 12)"
  type: long
  inputBinding:
    prefix: --error_rate_threshold
- id: in_short_read_coverage_threshold
  doc: "Minimum short read coverage to do correction (default:\n20)"
  type: long
  inputBinding:
    prefix: --short_read_coverage_threshold
- id: in_long_read_batch_size
  doc: "INT number of long reads to work on at a time. This is\na key parameter to\
    \ adjusting performance. A smaller\nbatch size keeps the sizes and runtimes of\n\
    intermediate steps tractable on large datasets, but\ncan slow down execution on\
    \ small datasets. The default\nvalue should be suitable for large datasets. (default:\n\
    500)"
  type: long
  inputBinding:
    prefix: --long_read_batch_size
- id: in_sam_tools_path
  doc: "Path to samtools by default assumes its installed. If\nnot specified, the\
    \ included version will be used.\n(default: /usr/local/bin)\n"
  type: File
  inputBinding:
    prefix: --samtools_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_mode
  doc: "0: run through, 1: Prepare homopolymer compressed long\nand short reads. 2:\
    \ Execute correction on batches of\nlong reads. Can be superseded by --parallelized_mode_2\n\
    where you will only execute a single batch. 3: Combine\ncorrected batches into\
    \ a final output folder.\n(default: 0)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_mode)
cwlVersion: v1.1
baseCommand:
- runLSC.py
