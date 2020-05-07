class: CommandLineTool
id: runLSC.py.cwl
inputs:
- id: long_reads
  doc: 'FASTAFILE Long reads to correct. Required in mode 0 or 1. (default: None)'
  type: string
  inputBinding:
    prefix: --long_reads
- id: short_reads
  doc: '[SHORT_READS [SHORT_READS ...]] FASTA/FASTQ FILE Short reads used to correct
    the long reads. Can be multiple files. If choice is cps reads, then there must
    be 2 files, the cps and the idx file following --short reads. Required in mode
    0 or 1. (default: None)'
  type: boolean
  inputBinding:
    prefix: --short_reads
- id: short_read_file_type
  doc: 'Short read file type (default: fa)'
  type: string
  inputBinding:
    prefix: --short_read_file_type
- id: threads
  doc: 'Number of threads (Default = cpu_count) (default: 0)'
  type: string
  inputBinding:
    prefix: --threads
- id: tempdir
  doc: 'FOLDERNAME where temporary files can be placed (default: /tmp)'
  type: string
  inputBinding:
    prefix: --tempdir
- id: specific_tempdir
  doc: 'FOLDERNAME of exactly where to place temproary folders. Required in mode 1,
    2 or 3. Recommended for any run where you may want to look back at intermediate
    files. (default: None)'
  type: string
  inputBinding:
    prefix: --specific_tempdir
- id: output
  doc: 'FOLDERNAME where output is to be written. Required in mode 0 or 3. (default:
    None)'
  type: string
  inputBinding:
    prefix: --output
- id: mode
  doc: '{0,1,2,3}      0: run through, 1: Prepare homopolymer compressed long and
    short reads. 2: Execute correction on batches of long reads. Can be superseded
    by --parallelized_mode_2 where you will only execute a single batch. 3: Combine
    corrected batches into a final output folder. (default: 0)'
  type: boolean
  inputBinding:
    prefix: --mode
- id: parallelized_mode_2
  doc: 'Mode 2, but you specify a sigle batch to execute. (default: None)'
  type: string
  inputBinding:
    prefix: --parallelized_mode_2
- id: aligner
  doc: 'Aligner choice. hisat parameters have not been optimized, so we recommend
    bowtie2. (default: bowtie2)'
  type: string
  inputBinding:
    prefix: --aligner
- id: sort_mem_max
  doc: '-S option for memory in unix sort (default: None)'
  type: string
  inputBinding:
    prefix: --sort_mem_max
- id: min_number_of_non_n
  doc: 'Minimum number of non-N characters in the compressed read (default: 40)'
  type: long
  inputBinding:
    prefix: --minNumberofNonN
- id: max_n
  doc: 'Maximum number of Ns in the compressed read (default: None)'
  type: long
  inputBinding:
    prefix: --maxN
- id: error_rate_threshold
  doc: 'Maximum percent of errors in a read to use the alignment (default: 12)'
  type: string
  inputBinding:
    prefix: --error_rate_threshold
- id: short_read_coverage_threshold
  doc: 'Minimum short read coverage to do correction (default: 20)'
  type: string
  inputBinding:
    prefix: --short_read_coverage_threshold
- id: long_read_batch_size
  doc: 'INT number of long reads to work on at a time. This is a key parameter to
    adjusting performance. A smaller batch size keeps the sizes and runtimes of intermediate
    steps tractable on large datasets, but can slow down execution on small datasets.
    The default value should be suitable for large datasets. (default: 500)'
  type: string
  inputBinding:
    prefix: --long_read_batch_size
- id: sam_tools_path
  doc: 'Path to samtools by default assumes its installed. If not specified, the included
    version will be used. (default: /tmp/tmpbf3ugpsu/bin)'
  type: string
  inputBinding:
    prefix: --samtools_path
outputs: []
cwlVersion: v1.1
baseCommand:
- runLSC.py
