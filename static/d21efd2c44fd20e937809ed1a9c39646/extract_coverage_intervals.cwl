class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/extract_coverage_intervals.cwl
inputs:
- id: region_interested_bed
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
- id: minimum_read_depth
  doc: 'Minimum read depth per window (default: 100)'
  type: long
  inputBinding:
    prefix: -c
- id: threshold_overlap_read
  doc: 'Threshold on the overlap between each read and the window (default: 0.85)'
  type: double
  inputBinding:
    prefix: -f
- id: len_window_length
  doc: ',len2,...      Window length used by ShoRAH (default: 201)'
  type: string
  inputBinding:
    prefix: -w
- id: shift_window_shifts
  doc: ', shift2, ... Window shifts used by ShoRAH (default: 67)'
  type: string
  inputBinding:
    prefix: -s
- id: name_patientsample_identifiers
  doc: ',name2,...    Patient/sample identifiers as comma separated strings (default:
    None)'
  type: string
  inputBinding:
    prefix: -N
- id: indicate_apply_shift
  doc: "Indicate whether to apply a more liberal shift on intervals' right-endpoint\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: -e
- id: no_shor_ah
  doc: 'Inidcate whether to report regions with sufficient coverage rather than windows
    for SNV calling using ShoRAH (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-shorah
- id: number_threads_default
  doc: 'Number of threads (default: 1)'
  type: long
  inputBinding:
    prefix: -t
- id: output_file_name
  doc: 'Output file name (default: coverage_intervals.tsv)'
  type: string
  inputBinding:
    prefix: -o
- id: bam
  doc: Input BAM file(s)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_coverage_intervals
