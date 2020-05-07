class: CommandLineTool
id: extract_coverage_intervals.cwl
inputs:
- id: bam
  doc: Input BAM file(s)
  type: string
  inputBinding:
    position: 0
- id: r
  doc: 'Region of interested in BED format, e.g. HXB2:2253-3869. Loci are interpreted
    using 0-based indexing, and a half-open interval is used, i.e, [start:end) (default:
    None)'
  type: string
  inputBinding:
    prefix: -r
- id: cf
  doc: 'File containing coverage per locus per sample. Samples are expected as columns
    and loci as rows. This option is not compatible with the read-window overlap thresholding
    (default: None)'
  type: string
  inputBinding:
    prefix: -cf
- id: c
  doc: 'Minimum read depth per window (default: 100)'
  type: long
  inputBinding:
    prefix: -c
- id: f
  doc: 'Threshold on the overlap between each read and the window (default: 0.85)'
  type: double
  inputBinding:
    prefix: -f
- id: w
  doc: ',len2,...      Window length used by ShoRAH (default: 201)'
  type: string
  inputBinding:
    prefix: -w
- id: s
  doc: ', shift2, ... Window shifts used by ShoRAH (default: 67)'
  type: string
  inputBinding:
    prefix: -s
- id: n
  doc: ',name2,...    Patient/sample identifiers as comma separated strings (default:
    None)'
  type: string
  inputBinding:
    prefix: -N
- id: e
  doc: "Indicate whether to apply a more liberal shift on intervals' right-endpoint\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: -e
- id: t
  doc: 'Number of threads (default: 1)'
  type: long
  inputBinding:
    prefix: -t
- id: o
  doc: 'Output file name (default: coverage_intervals.tsv)'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_coverage_intervals
