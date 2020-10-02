class: CommandLineTool
id: spring.cwl
inputs:
- id: in__compress
  doc: '[ --compress ]               compress'
  type: boolean
  inputBinding:
    prefix: -c
- id: in__decompress
  doc: '[ --decompress ]             decompress'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_decompress_range
  doc: "--decompress-range start end\n(optional) decompress only reads (or read\n\
    pairs for PE datasets) from start to end\n(both inclusive) (1 <= start <= end\
    \ <=\nnum_reads (or num_read_pairs for PE)). If -r\nwas specified during compression,\
    \ the range\nof reads does not correspond to the original\norder of reads in the\
    \ FASTQ file."
  type: File
  inputBinding:
    prefix: --decompress-range
- id: in_arg_input_file
  doc: '[ --input-file ] arg         input file name (two files for paired end)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_arg_output_file
  doc: "[ --output-file ] arg        output file name (for paired end\ndecompression,\
    \ if only one file is specified,\ntwo output files will be created by suffixing\n\
    .1 and .2.)"
  type: File
  inputBinding:
    prefix: -o
- id: in_arg_directory_create
  doc: "[ --working-dir ] arg (=.)   directory to create temporary files (default\n\
    current directory)"
  type: boolean
  inputBinding:
    prefix: -w
- id: in_arg_number_threads
  doc: '[ --num-threads ] arg (=8)   number of threads (default 8)'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_retain_read_order
  doc: "[ --allow-read-reordering ]  do not retain read order during compression\n\
    (paired reads still remain paired)"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_no_quality
  doc: do not retain quality values during
  type: boolean
  inputBinding:
    prefix: --no-quality
- id: in_use_compression_arbitrarily
  doc: "[ --long ]                   Use for compression of arbitrarily long read\n\
    lengths. Can also provide better compression\nfor reads with significant number\
    \ of indels.\n-r disabled in this mode. For Illumina short\nreads, compression\
    \ is better without -l flag."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_enable_compression_input
  doc: "[ --gzipped-fastq ]          enable if compression input is gzipped fastq\n\
    or to output gzipped fastq during\ndecompression"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_fast_a_input
  doc: "enable if compression input is fasta file\n(i.e., no qualities)\n"
  type: boolean
  inputBinding:
    prefix: --fasta-input
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: "[ --output-file ] arg        output file name (for paired end\ndecompression,\
    \ if only one file is specified,\ntwo output files will be created by suffixing\n\
    .1 and .2.)"
  type: File
  outputBinding:
    glob: $(inputs.in_arg_output_file)
cwlVersion: v1.1
baseCommand:
- spring
