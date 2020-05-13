class: CommandLineTool
id: dsh_filter_gfa1.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: invalid_segment_references
  doc: filter containments, links, and paths that reference missing segments [optional]
  type: boolean
  inputBinding:
    prefix: --invalid-segment-references
- id: length
  doc: '[class java.lang.Integer]  filter segments by length [optional]'
  type: boolean
  inputBinding:
    prefix: --length
- id: fragment_count
  doc: '[class java.lang.Integer]  filter segments and links by fragment count [optional]'
  type: boolean
  inputBinding:
    prefix: --fragment-count
- id: km_er_count
  doc: '[class java.lang.Integer]  filter segments and links by k-mer count [optional]'
  type: boolean
  inputBinding:
    prefix: --kmer-count
- id: mapping_quality
  doc: '[class java.lang.Integer]  filter links by mapping quality [optional]'
  type: boolean
  inputBinding:
    prefix: --mapping-quality
- id: mismatch_count
  doc: '[class java.lang.Integer]  filter links by mismatch count [optional]'
  type: boolean
  inputBinding:
    prefix: --mismatch-count
- id: read_count
  doc: '[class java.lang.Integer]  filter segments and links by read count [optional]'
  type: boolean
  inputBinding:
    prefix: --read-count
- id: script
  doc: '[class java.lang.String]  filter by script, eval against r [optional]'
  type: boolean
  inputBinding:
    prefix: --script
- id: input_gfa1_file
  doc: '[class java.io.File]  input GFA 1.0 file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-gfa1-file
- id: output_gfa1_file
  doc: '[class java.io.File]  output GFA 1.0 file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-gfa1-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-filter-gfa1
