class: CommandLineTool
id: sj_visualizer.pl.cwl
inputs:
- id: in_splice_junctions_mapped
  doc: Splice junctions from mapped RNA-seq data in BED6 format
  type: boolean
  inputBinding:
    prefix: -s
- id: in_chromosome_sizes_files
  doc: Chromosome sizes files
  type: boolean
  inputBinding:
    prefix: -c
- id: in_convert_resuting_files
  doc: Convert resuting BED6 files to bigBed format
  type: boolean
  inputBinding:
    prefix: -b
- id: in_minimum_read_coverage
  doc: "Minimum read coverage for a splice junction. Only splice junctions\nthat are\
    \ supported by at least this number of reads are considered."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_expand_splice_junctions
  doc: Expand splice junctions by a window of this size on both sides
  type: boolean
  inputBinding:
    prefix: -w
- id: in_filter_circular_splice
  doc: Filter circular splice junctions
  type: boolean
  inputBinding:
    prefix: -z
- id: in_relative_output_path
  doc: Relative output path
  type: File
  inputBinding:
    prefix: -o
- id: in_man
  doc: "Prints the manual page and exits\n"
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_relative_output_path
  doc: Relative output path
  type: File
  outputBinding:
    glob: $(inputs.in_relative_output_path)
cwlVersion: v1.1
baseCommand:
- sj_visualizer.pl
