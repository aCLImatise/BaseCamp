class: CommandLineTool
id: ../../../bl_filter_illumina.cwl
inputs:
- id: specify_multiple_input_files
  doc: specify multiple INPUT files
  type: boolean
  inputBinding:
    prefix: -i
- id: specify_multiple_output_files
  doc: specify multiple OUTPUT files. If input data are paired, these files contain
    only reads that passed for both members of the pair
  type: boolean
  inputBinding:
    prefix: -o
- id: specify_single_file
  doc: specify single OUTPUT file for reads that passed for one member of a pair but
    not the other. These reads passed the filter criteria, but are excluded from the
    multiple OUTPUT files specified by -o because  their paired read did not pass
  type: boolean
  inputBinding:
    prefix: -u
- id: use_fasta_output
  doc: use FASTA output instead of FASTQ
  type: boolean
  inputBinding:
    prefix: -f
- id: ascii_offset_quality
  doc: ascii OFFSET for the quality score (default = 33)
  type: boolean
  inputBinding:
    prefix: -t
- id: filter_reads_mean
  doc: filter out reads that have a mean quality less than QUALITY
  type: boolean
  inputBinding:
    prefix: -q
- id: limit_output_only
  doc: limit output to only the first NREADS that pass
  type: boolean
  inputBinding:
    prefix: -n
- id: remove_illumina_sequences
  doc: remove Illumina adapter sequences
  type: boolean
  inputBinding:
    prefix: -a
- id: remove_sequences_suspicious
  doc: remove sequences with suspicious base content
  type: boolean
  inputBinding:
    prefix: -b
- id: reformat_paired_read
  doc: reformat paired read ID lines by replacing everything after the first space,
    tab or / with the specified SEP followed by the input file number (e.g. '/' will
    use /1 as the ID suffix for the first input file, etc.)
  type: boolean
  inputBinding:
    prefix: -s
- id: filter_illumina
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-filter-illumina
