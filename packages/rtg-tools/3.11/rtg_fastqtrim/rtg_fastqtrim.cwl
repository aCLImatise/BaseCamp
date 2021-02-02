class: CommandLineTool
id: rtg_fastqtrim.cwl
inputs:
- id: in_input
  doc: "input FASTQ file, Use '-' to read from\nstandard input"
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: "output filename. Use '-' to write to\nstandard output"
  type: File
  inputBinding:
    prefix: --output
- id: in_quality_format
  doc: "quality data encoding method used in FASTQ\ninput files (Illumina 1.8+ uses\
    \ sanger).\nAllowed values are [sanger, solexa,\nillumina] (Default is sanger)"
  type: double
  inputBinding:
    prefix: --quality-format
- id: in_discard_empty_reads
  doc: "if set, discard reads that have zero length\nafter trimming. Should not be\
    \ used with\npaired-end data"
  type: boolean
  inputBinding:
    prefix: --discard-empty-reads
- id: in_end_quality_threshold
  doc: "trim read ends to maximise base quality\nabove the given threshold (Default\
    \ is 0)"
  type: long
  inputBinding:
    prefix: --end-quality-threshold
- id: in_min_read_length
  doc: "if a read ends up shorter than this\nthreshold it will be trimmed to zero\
    \ length\n(Default is 0)"
  type: long
  inputBinding:
    prefix: --min-read-length
- id: in_start_quality_threshold
  doc: "trim read starts to maximise base quality\nabove the given threshold (Default\
    \ is 0)"
  type: long
  inputBinding:
    prefix: --start-quality-threshold
- id: in_trim_end_bases
  doc: "always trim the specified number of bases\nfrom read end (Default is 0)"
  type: long
  inputBinding:
    prefix: --trim-end-bases
- id: in_trim_start_bases
  doc: "always trim the specified number of bases\nfrom read start (Default is 0)"
  type: long
  inputBinding:
    prefix: --trim-start-bases
- id: in_no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: in_reverse_complement
  doc: if set, output in reverse complement
  type: boolean
  inputBinding:
    prefix: --reverse-complement
- id: in_seed
  doc: seed used during subsampling
  type: long
  inputBinding:
    prefix: --seed
- id: in_subsample
  doc: "if set, subsample the input to retain this\nfraction of reads"
  type: double
  inputBinding:
    prefix: --subsample
- id: in_threads
  doc: "number of threads (Default is the number of\navailable cores)\n"
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output filename. Use '-' to write to\nstandard output"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- rtg
- fastqtrim
