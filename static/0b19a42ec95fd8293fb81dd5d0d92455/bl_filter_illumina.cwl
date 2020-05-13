class: CommandLineTool
id: bl_filter_illumina.cwl
inputs:
- id: i
  doc: specify multiple INPUT files
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: specify multiple OUTPUT files. If input data are paired, these files contain
    only reads that passed for both members of the pair
  type: boolean
  inputBinding:
    prefix: -o
- id: u
  doc: specify single OUTPUT file for reads that passed for one member of a pair but
    not the other. These reads passed the filter criteria, but are excluded from the
    multiple OUTPUT files specified by -o because  their paired read did not pass
  type: boolean
  inputBinding:
    prefix: -u
- id: f
  doc: use FASTA output instead of FASTQ
  type: boolean
  inputBinding:
    prefix: -f
- id: t
  doc: ascii OFFSET for the quality score (default = 33)
  type: boolean
  inputBinding:
    prefix: -t
- id: q
  doc: filter out reads that have a mean quality less than QUALITY
  type: boolean
  inputBinding:
    prefix: -q
- id: n
  doc: limit output to only the first NREADS that pass
  type: boolean
  inputBinding:
    prefix: -n
- id: a
  doc: remove Illumina adapter sequences
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: remove sequences with suspicious base content
  type: boolean
  inputBinding:
    prefix: -b
- id: s
  doc: reformat paired read ID lines by replacing everything after the first space,
    tab or / with the specified SEP followed by the input file number (e.g. '/' will
    use /1 as the ID suffix for the first input file, etc.)
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-filter-illumina
