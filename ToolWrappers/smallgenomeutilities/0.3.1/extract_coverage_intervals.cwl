class: CommandLineTool
id: extract_coverage_intervals.cwl
inputs:
- id: in_region_interested_bed
  doc: "Region of interested in BED format, e.g.\nHXB2:2253-3869. Loci are interpreted\
    \ using 0-based\nindexing, and a half-open interval is used, i.e,\n[start:end)\
    \ (default: None)"
  type: long?
  inputBinding:
    prefix: -r
- id: in_cf
  doc: "File containing coverage per locus per sample. Samples\nare expected as columns\
    \ and loci as rows. This option\nis not compatible with the read-window overlap\n\
    thresholding (default: None)"
  type: File?
  inputBinding:
    prefix: -cf
- id: in_minimum_read_depth
  doc: 'Minimum read depth per window (default: 100)'
  type: long?
  inputBinding:
    prefix: -c
- id: in_threshold_overlap_read
  doc: "Threshold on the overlap between each read and the\nwindow (default: 0.85)"
  type: double?
  inputBinding:
    prefix: -f
- id: in_len_window_length
  doc: ',len2,...      Window length used by ShoRAH (default: 201)'
  type: long?
  inputBinding:
    prefix: -w
- id: in_shift_window_shifts
  doc: ", shift2, ...\nWindow shifts used by ShoRAH (default: 67)"
  type: long?
  inputBinding:
    prefix: -s
- id: in_name_patientsample_identifiers
  doc: ",name2,...    Patient/sample identifiers as comma separated strings\n(default:\
    \ None)"
  type: long?
  inputBinding:
    prefix: -N
- id: in_indicate_apply_onintervals
  doc: "Indicate whether to apply a more liberal shift on\nintervals' right-endpoint\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_no_shor_ah
  doc: "Inidcate whether to report regions with sufficient\ncoverage rather than windows\
    \ for SNV calling using\nShoRAH (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-shorah
- id: in_number_threads_default
  doc: 'Number of threads (default: 1)'
  type: long?
  inputBinding:
    prefix: -t
- id: in_output_file_name
  doc: 'Output file name (default: coverage_intervals.tsv)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_bam
  doc: Input BAM file(s)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: 'Output file name (default: coverage_intervals.tsv)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- extract_coverage_intervals
