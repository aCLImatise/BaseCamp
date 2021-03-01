class: CommandLineTool
id: bl_filter_illumina.cwl
inputs:
- id: in_specify_multiple_input_files
  doc: specify multiple INPUT files
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_specify_multiple_output_files
  doc: "specify multiple OUTPUT files. If input data are paired, these files\ncontain\
    \ only reads that passed for both members of the pair"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_specify_single_file
  doc: "specify single OUTPUT file for reads that passed for one member of a\npair\
    \ but not the other. These reads passed the filter criteria, but\nare excluded\
    \ from the multiple OUTPUT files specified by -o because\ntheir paired read did\
    \ not pass"
  type: File?
  inputBinding:
    prefix: -u
- id: in_use_fasta_output
  doc: use FASTA output instead of FASTQ
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_ascii_offset_quality
  doc: ascii OFFSET for the quality score (default = 33)
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_filter_reads_have
  doc: filter out reads that have a mean quality less than QUALITY
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_limit_output_pass
  doc: limit output to only the first NREADS that pass
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_remove_illumina_sequences
  doc: remove Illumina adapter sequences
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_remove_sequences_suspicious
  doc: remove sequences with suspicious base content
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_reformat_paired_read
  doc: "reformat paired read ID lines by replacing everything after the first\nspace,\
    \ tab or / with the specified SEP followed by the input file number\n(e.g. '/'\
    \ will use /1 as the ID suffix for the first input file, etc.)"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_filter_illumina
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_single_file
  doc: "specify single OUTPUT file for reads that passed for one member of a\npair\
    \ but not the other. These reads passed the filter criteria, but\nare excluded\
    \ from the multiple OUTPUT files specified by -o because\ntheir paired read did\
    \ not pass"
  type: File?
  outputBinding:
    glob: $(inputs.in_specify_single_file)
hints: []
cwlVersion: v1.1
baseCommand:
- bl-filter-illumina
