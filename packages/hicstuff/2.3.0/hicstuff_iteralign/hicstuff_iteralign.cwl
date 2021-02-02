class: CommandLineTool
id: hicstuff_iteralign.cwl
inputs:
- id: in_genome
  doc: "The genome on which to map the reads. Must be\nthe path to the bowtie2/bwa\
    \ index if using bowtie2/bwa\nor to the genome in fasta format if using minimap2."
  type: File
  inputBinding:
    prefix: --genome
- id: in_threads
  doc: "Number of parallel threads allocated for the\nalignment [default: 1]."
  type: long
  inputBinding:
    prefix: --threads
- id: in_tempdir
  doc: Temporary directory. Defaults to current
  type: Directory
  inputBinding:
    prefix: --tempdir
- id: in_min_len
  doc: "Length to which the reads should be\ntruncated [default: 20]."
  type: long
  inputBinding:
    prefix: --min-len
- id: in_out_bam
  doc: "Path where the alignment will be written in\nBAM format."
  type: File
  inputBinding:
    prefix: --out-bam
- id: in_read_len
  doc: "Read length in input FASTQ file. If not provided,\nthis is estimated from\
    \ the first read in the file.\n"
  type: long
  inputBinding:
    prefix: --read-len
- id: in_a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
- id: in_aligner
  doc: ''
  type: long
  inputBinding:
    prefix: --aligner
- id: in_reads_dot_fq
  doc: Fastq file containing the reads to be aligned
  type: string
  inputBinding:
    position: 0
- id: in_directory_dot
  doc: -a, --aligner=bowtie2    Choose alignment software between bowtie2,
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hicstuff
- iteralign
