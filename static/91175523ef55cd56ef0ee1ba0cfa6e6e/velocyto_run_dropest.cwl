class: CommandLineTool
id: velocyto_run_dropest.cwl
inputs:
- id: in_bc_file
  doc: Valid barcodes file, to filter the bam. If --bcfile is not specified the file
    will be searched in the default position outputted by ``velocyto tools dropest_bc_correct``.
    Otherwise an error will be thrown
  type: File?
  inputBinding:
    prefix: --bcfile
- id: in_logic
  doc: 'The logic to use for the filtering (default: Default)'
  type: string?
  inputBinding:
    prefix: --logic
- id: in_output_folder
  doc: Output folder, if it does not exist it will be created.
  type: Directory?
  inputBinding:
    prefix: --outputfolder
- id: in_sample_id
  doc: The sample name that will be used as a the filename of the output.
  type: File?
  inputBinding:
    prefix: --sampleid
- id: in_rep_mask
  doc: .gtf file containing intervals to mask (Optional)
  type: File?
  inputBinding:
    prefix: --repmask
- id: in_sam_tools_threads
  doc: The number of threads to use to sort the bam by cellID file using samtools
  type: long?
  inputBinding:
    prefix: --samtools-threads
- id: in_sam_tools_memory
  doc: The number of MB used for every thread by samtools to sort the bam file
  type: long?
  inputBinding:
    prefix: --samtools-memory
- id: in_d_type
  doc: 'The dtype of the loom file layers - if more than 6000 molecules/reads per
    gene per cell are expected set uint32 to avoid truncation (default run_dropest:
    uint32)'
  type: File?
  inputBinding:
    prefix: --dtype
- id: in_dump
  doc: 'For debugging purposes only: it will dump a molecular mapping report to hdf5.
    --dump N, saves a cell every N cells. If p is prepended a more complete (but huge)
    pickle report is printed (default: 0)'
  type: long?
  inputBinding:
    prefix: --dump
- id: in_verbose
  doc: 'Set the vebosity level: -v (only warnings) -vv (warnings and info) -vvv (warnings,
    info and debug)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_bam_file
  doc: bam files to be analyzed
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: Output folder, if it does not exist it will be created.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
- id: out_sample_id
  doc: The sample name that will be used as a the filename of the output.
  type: File?
  outputBinding:
    glob: $(inputs.in_sample_id)
hints: []
cwlVersion: v1.1
baseCommand:
- velocyto
- run-dropest
