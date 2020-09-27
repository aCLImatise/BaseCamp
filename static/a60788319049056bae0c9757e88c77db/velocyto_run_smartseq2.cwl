class: CommandLineTool
id: velocyto_run_smartseq2.cwl
inputs:
- id: in_output_folder
  doc: Output folder, if it does not exist it will be created.
  type: Directory
  inputBinding:
    prefix: --outputfolder
- id: in_sample_id
  doc: The sample name that will be used as a the filename of the output.
  type: File
  inputBinding:
    prefix: --sampleid
- id: in_rep_mask
  doc: .gtf file containing intervals to mask
  type: File
  inputBinding:
    prefix: --repmask
- id: in_d_type
  doc: 'The dtype of the loom file layers - if more than 6000 molecules/reads per
    gene per cell are expected set uint32 to avoid truncation (default in run_smartseq2:
    uint32)'
  type: File
  inputBinding:
    prefix: --dtype
- id: in_dump
  doc: 'For debugging purposes only: it will dump a molecular mapping report to hdf5.
    --dump N, saves a cell every N cells. If p is prepended a more complete (but huge)
    pickle report is printed (default: 0)'
  type: long
  inputBinding:
    prefix: --dump
- id: in_verbose
  doc: 'Set the verbosity level: -v (only warnings) -vv (warnings and info) -vvv (warnings,
    info and debug)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_bam_files_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gtf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: Output folder, if it does not exist it will be created.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_folder)
- id: out_sample_id
  doc: The sample name that will be used as a the filename of the output.
  type: File
  outputBinding:
    glob: $(inputs.in_sample_id)
cwlVersion: v1.1
baseCommand:
- velocyto
- run-smartseq2
