class: CommandLineTool
id: sj_visualizer.pl.cwl
inputs:
- id: s
  doc: Splice junctions from mapped RNA-seq data in BED6 format
  type: boolean
  inputBinding:
    prefix: -s
- id: c
  doc: Chromosome sizes files
  type: boolean
  inputBinding:
    prefix: -c
- id: b
  doc: Convert resuting BED6 files to bigBed format
  type: boolean
  inputBinding:
    prefix: -b
- id: r
  doc: Minimum read coverage for a splice junction. Only splice junctions that are
    supported by at least this number of reads are considered.
  type: boolean
  inputBinding:
    prefix: -r
- id: w
  doc: Expand splice junctions by a window of this size on both sides
  type: boolean
  inputBinding:
    prefix: -w
- id: z
  doc: Filter circular splice junctions
  type: boolean
  inputBinding:
    prefix: -z
- id: o
  doc: Relative output path
  type: boolean
  inputBinding:
    prefix: -o
- id: man
  doc: Prints the manual page and exits
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- sj_visualizer.pl
