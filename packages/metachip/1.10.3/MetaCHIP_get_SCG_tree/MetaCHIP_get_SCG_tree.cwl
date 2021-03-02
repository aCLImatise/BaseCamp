class: CommandLineTool
id: MetaCHIP_get_SCG_tree.cwl
inputs:
- id: in_input_genome_folder
  doc: input genome folder
  type: Directory?
  inputBinding:
    prefix: -i
- id: in_output_prefix
  doc: output prefix
  type: string?
  inputBinding:
    prefix: -p
- id: in_file_extension
  doc: file extension
  type: File?
  inputBinding:
    prefix: -x
- id: in_non_meta
  doc: annotate Non-metagenome-assembled genomes (Non-MAGs)
  type: boolean?
  inputBinding:
    prefix: -nonmeta
- id: in_number_threads_default
  doc: 'number of threads, default: 1'
  type: long?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- MetaCHIP
- get_SCG_tree
