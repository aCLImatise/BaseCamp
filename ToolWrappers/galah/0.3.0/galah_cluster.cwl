class: CommandLineTool
id: galah_cluster.cwl
inputs:
- id: in_quality_formula
  doc: ''
  type: string?
  inputBinding:
    prefix: --quality-formula
- id: in_pre_cluster_method
  doc: ''
  type: string?
  inputBinding:
    prefix: --precluster-method
- id: in_pre_cluster_ani
  doc: ''
  type: string?
  inputBinding:
    prefix: --precluster-ani
- id: in_output_representative_list
  doc: ''
  type: string?
  inputBinding:
    prefix: --output-representative-list
- id: in_output_representative_fast_a_directory_copy
  doc: ''
  type: Directory?
  inputBinding:
    prefix: --output-representative-fasta-directory-copy
- id: in_output_representative_fast_a_directory
  doc: ''
  type: Directory?
  inputBinding:
    prefix: --output-representative-fasta-directory
- id: in_output_cluster_definition
  doc: ''
  type: string?
  inputBinding:
    prefix: --output-cluster-definition
- id: in_min_completeness
  doc: ''
  type: long?
  inputBinding:
    prefix: --min-completeness
- id: in_min_aligned_fraction
  doc: ''
  type: long?
  inputBinding:
    prefix: --min-aligned-fraction
- id: in_max_contamination
  doc: ''
  type: long?
  inputBinding:
    prefix: --max-contamination
- id: in_genome_fast_a_extension
  doc: ''
  type: string?
  inputBinding:
    prefix: --genome-fasta-extension
- id: in_fragment_length
  doc: ''
  type: long?
  inputBinding:
    prefix: --fragment-length
- id: in_ani
  doc: ''
  type: string?
  inputBinding:
    prefix: --ani
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_representative_fast_a_directory_copy
  doc: ''
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_representative_fast_a_directory_copy)
- id: out_output_representative_fast_a_directory
  doc: ''
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_representative_fast_a_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galah:0.3.0--h516909a_0
cwlVersion: v1.1
baseCommand:
- galah
- cluster
