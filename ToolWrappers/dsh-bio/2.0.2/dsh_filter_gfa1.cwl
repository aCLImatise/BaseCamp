class: CommandLineTool
id: dsh_filter_gfa1.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_invalid_segment_references
  doc: filter containments, links, and paths that reference missing segments [optional]
  type: boolean?
  inputBinding:
    prefix: --invalid-segment-references
- id: in_length
  doc: '[class java.lang.Integer]  filter segments by length [optional]'
  type: boolean?
  inputBinding:
    prefix: --length
- id: in_fragment_count
  doc: '[class java.lang.Integer]  filter segments and links by fragment count [optional]'
  type: boolean?
  inputBinding:
    prefix: --fragment-count
- id: in_km_er_count
  doc: '[class java.lang.Integer]  filter segments and links by k-mer count [optional]'
  type: boolean?
  inputBinding:
    prefix: --kmer-count
- id: in_mapping_quality
  doc: '[class java.lang.Integer]  filter links by mapping quality [optional]'
  type: boolean?
  inputBinding:
    prefix: --mapping-quality
- id: in_mismatch_count
  doc: '[class java.lang.Integer]  filter links by mismatch count [optional]'
  type: boolean?
  inputBinding:
    prefix: --mismatch-count
- id: in_read_count
  doc: '[class java.lang.Integer]  filter segments and links by read count [optional]'
  type: boolean?
  inputBinding:
    prefix: --read-count
- id: in_script
  doc: '[class java.lang.String]  filter by script, eval against r [optional]'
  type: boolean?
  inputBinding:
    prefix: --script
- id: in_input_gfa_one_file
  doc: '[class java.io.File]  input GFA 1.0 file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-gfa1-file
- id: in_output_gfa_one_file
  doc: '[class java.io.File]  output GFA 1.0 file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-gfa1-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_gfa_one_file
  doc: '[class java.io.File]  output GFA 1.0 file, default stdout [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_gfa_one_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.2--0
cwlVersion: v1.1
baseCommand:
- dsh-filter-gfa1
