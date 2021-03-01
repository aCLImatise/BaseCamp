class: CommandLineTool
id: megalodon_extras_merge_modified_bases.cwl
inputs:
- id: in_output_megalodon_results_dir
  doc: "Output directory. Cannot exist before this command.\nDefault: megalodon_merge_mods_results"
  type: Directory?
  inputBinding:
    prefix: --output-megalodon-results-dir
- id: in_data_batch_size
  doc: "Batch size to insert position and statistics data.\nDefault: 100000"
  type: long?
  inputBinding:
    prefix: --data-batch-size
- id: in_max_processes
  doc: "Maximum number of processes to open for reading\nstatistics. Each process\
    \ must load all output database\nin memory indices, and thus may incur high memory\n\
    usage. Default: 4"
  type: long?
  inputBinding:
    prefix: --max-processes
- id: in_single_process
  doc: Do not use multiprocessing with one input database per
  type: boolean?
  inputBinding:
    prefix: --single-process
- id: in_overwrite
  doc: Overwrite output directory if it exists.
  type: Directory?
  inputBinding:
    prefix: --overwrite
- id: in_process_dot
  doc: --database-safety DATABASE_SAFETY
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_megalodon_results_dir
  doc: "Output directory. Cannot exist before this command.\nDefault: megalodon_merge_mods_results"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_megalodon_results_dir)
- id: out_overwrite
  doc: Overwrite output directory if it exists.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_overwrite)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- merge
- modified_bases
