class: CommandLineTool
id: itero_assemble_mpi.cwl
inputs:
- id: in_config
  doc: A configuration file containing reads to assemble
  type: File?
  inputBinding:
    prefix: --config
- id: in_subfolder
  doc: "A subdirectory, below the level of the group,\ncontaining the reads"
  type: string?
  inputBinding:
    prefix: --subfolder
- id: in_iterations
  doc: The number of iterations to run for each locus
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_local_cores
  doc: The number of cores to use on the main node
  type: long?
  inputBinding:
    prefix: --local-cores
- id: in_clean
  doc: Cleanup all intermediate files
  type: boolean?
  inputBinding:
    prefix: --clean
- id: in_only_single_locus
  doc: Assemble only to a single contig
  type: boolean?
  inputBinding:
    prefix: --only-single-locus
- id: in_allow_multiple_contigs
  doc: Allow assembly stages to produce multiple contigs
  type: boolean?
  inputBinding:
    prefix: --allow-multiple-contigs
- id: in_do_not_zip
  doc: Do not zip the iteration files, which is the default
  type: boolean?
  inputBinding:
    prefix: --do-not-zip
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File?
  inputBinding:
    prefix: --log-path
- id: in_output
  doc: The directory in which to store the output
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_behavior_dot
  doc: --verbosity {INFO,WARN,CRITICAL}
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The directory in which to store the output
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- itero
- assemble
- mpi
