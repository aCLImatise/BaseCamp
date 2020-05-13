class: CommandLineTool
id: rtg_help_fastqtrim.cwl
inputs:
- id: input
  doc: input FASTQ file, Use '-' to read from standard input
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: output filename. Use '-' to write to standard output
  type: File
  inputBinding:
    prefix: --output
- id: quality_format
  doc: quality data encoding method used in FASTQ input files (Illumina 1.8+ uses
    sanger). Allowed values are [sanger, solexa, illumina] (Default is sanger)
  type: string
  inputBinding:
    prefix: --quality-format
- id: discard_empty_reads
  doc: if set, discard reads that have zero length after trimming. Should not be used
    with paired-end data
  type: boolean
  inputBinding:
    prefix: --discard-empty-reads
- id: end_quality_threshold
  doc: trim read ends to maximise base quality above the given threshold (Default
    is 0)
  type: long
  inputBinding:
    prefix: --end-quality-threshold
- id: min_read_length
  doc: if a read ends up shorter than this threshold it will be trimmed to zero length
    (Default is 0)
  type: long
  inputBinding:
    prefix: --min-read-length
- id: start_quality_threshold
  doc: trim read starts to maximise base quality above the given threshold (Default
    is 0)
  type: long
  inputBinding:
    prefix: --start-quality-threshold
- id: trim_end_bases
  doc: always trim the specified number of bases from read end (Default is 0)
  type: long
  inputBinding:
    prefix: --trim-end-bases
- id: trim_start_bases
  doc: always trim the specified number of bases from read start (Default is 0)
  type: long
  inputBinding:
    prefix: --trim-start-bases
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: reverse_complement
  doc: if set, output in reverse complement
  type: boolean
  inputBinding:
    prefix: --reverse-complement
- id: seed
  doc: seed used during subsampling
  type: long
  inputBinding:
    prefix: --seed
- id: subsample
  doc: if set, subsample the input to retain this fraction of reads
  type: double
  inputBinding:
    prefix: --subsample
- id: threads
  doc: number of threads (Default is the number of available cores)
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- fastqtrim
