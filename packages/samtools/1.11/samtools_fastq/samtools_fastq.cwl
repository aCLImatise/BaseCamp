class: CommandLineTool
id: samtools_fastq.cwl
inputs:
- id: in_write_reads_designated_readother
  doc: write reads designated READ_OTHER to FILE
  type: File?
  inputBinding:
    prefix: '-0'
- id: in_one
  doc: write reads designated READ1 to FILE
  type: File?
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: write reads designated READ2 to FILE
  type: File?
  inputBinding:
    prefix: '-2'
- id: in_write_reads_designated_read_read
  doc: "write reads designated READ1 or READ2 to FILE\nnote: if a singleton file is\
    \ specified with -s, only\npaired reads will be written to the -1 and -2 files."
  type: File?
  inputBinding:
    prefix: -o
- id: in_only_include_reads_flags_present
  doc: only include reads with all  of the FLAGs in INT present [0]
  type: long?
  inputBinding:
    prefix: -f
- id: in_only_include_reads_none_present
  doc: only include reads with none of the FLAGS in INT present [0x900]
  type: long?
  inputBinding:
    prefix: -F
- id: in_only_exclude_reads
  doc: only EXCLUDE reads with all  of the FLAGs in INT present [0]
  type: long?
  inputBinding:
    prefix: -G
- id: in_append_read_name
  doc: don't append /1 and /2 to the read name
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_always_append_read
  doc: always append /1 and /2 to the read name
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_output_quality_present
  doc: output quality in the OQ tag if present
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_write_singleton_reads
  doc: write singleton reads designated READ1 or READ2 to FILE
  type: File?
  inputBinding:
    prefix: -s
- id: in_copy_bc_tags
  doc: copy RG, BC and QT tags to the FASTQ header line
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_copy_arbitrary_tags
  doc: copy arbitrary tags to the FASTQ header line
  type: string?
  inputBinding:
    prefix: -T
- id: in_default_quality_score
  doc: default quality score if not given in file [1]
  type: long?
  inputBinding:
    prefix: -v
- id: in_add_illumina_casava
  doc: add Illumina Casava 1.8 format entry to header (eg 1:N:0:ATCACG)
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_compression_level
  doc: compression level [0..9] to use when creating gz or bgzf fastq files [1]
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_i_one
  doc: write first index reads to FILE
  type: File?
  inputBinding:
    prefix: --i1
- id: in_i_two
  doc: write second index reads to FILE
  type: File?
  inputBinding:
    prefix: --i2
- id: in_barcode_tag
  doc: 'Barcode tag [default: BC]'
  type: string?
  inputBinding:
    prefix: --barcode-tag
- id: in_quality_tag
  doc: 'Quality tag [default: QT]'
  type: string?
  inputBinding:
    prefix: --quality-tag
- id: in_index_format
  doc: How to parse barcode and quality tags
  type: string?
  inputBinding:
    prefix: --index-format
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --input-fmt-option
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: Number of additional threads to use [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbosity
  doc: Set level of verbosity
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_i_one_four_i_eight
  doc: the first 14 characters are index 1, the next 8 characters are index 2
  type: long
  inputBinding:
    position: 0
- id: in_n_eight_i_one_four
  doc: ignore the first 8 characters, and use the next 14 characters for index 1
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samtools:1.11--h6270b1f_0
cwlVersion: v1.1
baseCommand:
- samtools
- fastq
