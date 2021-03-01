class: CommandLineTool
id: summarize_sam_compare_cnts_table_1cond.py.cwl
inputs:
- id: in_output
  doc: Output directory for filtered ase counts
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_input_original_names
  doc: Input original names [Required]
  type: string?
  inputBinding:
    prefix: --collection_identifiers
- id: in_collection_filenames
  doc: Input galaxy names [Required]
  type: string?
  inputBinding:
    prefix: --collection_filenames
- id: in_design
  doc: Design file
  type: File?
  inputBinding:
    prefix: --design
- id: in_parent_one
  doc: Column containing parent 1 genome, G1
  type: long?
  inputBinding:
    prefix: --parent1
- id: in_parent_two
  doc: Column containing parent 2 genome, G2
  type: long?
  inputBinding:
    prefix: --parent2
- id: in_sample_col
  doc: Column containing sample names, no rep info
  type: string?
  inputBinding:
    prefix: --sampleCol
- id: in_sample_id_col
  doc: Column containing sampleID names, has rep info
  type: string?
  inputBinding:
    prefix: --sampleIDCol
- id: in_apn
  doc: "APN (average per nucleotide) value for flagging a\nfeature as found and analyzable"
  type: string?
  inputBinding:
    prefix: --apn
- id: in_debug
  doc: Print debugging output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_collectionfilenames
  doc: -collection_filenames
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory for filtered ase counts
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bayesase:21.1.13.1--py_0
cwlVersion: v1.1
baseCommand:
- summarize_sam_compare_cnts_table_1cond.py
