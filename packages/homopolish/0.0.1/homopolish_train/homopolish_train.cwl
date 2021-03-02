class: CommandLineTool
id: homopolish_train.cwl
inputs:
- id: in_data_frame_dir
  doc: "[REQUIRED] Path to a directory for alignment\ndataframe."
  type: File?
  inputBinding:
    prefix: --dataframe_dir
- id: in_output_dir
  doc: Path to the output directory. [output]
  type: File?
  inputBinding:
    prefix: --output_dir
- id: in_output_prefix
  doc: Prefix for the train model. [train]
  type: string?
  inputBinding:
    prefix: --output_prefix
- id: in_threads
  doc: "Number of threads to use. [1]\n"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Path to the output directory. [output]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/homopolish:0.0.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- homopolish
- train
