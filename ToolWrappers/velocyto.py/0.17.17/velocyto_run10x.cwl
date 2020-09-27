class: CommandLineTool
id: velocyto_run10x.cwl
inputs:
- id: in_metadata_table
  doc: Table containing metadata of the various samples (csv fortmated rows are samples
    and cols are entries)
  type: File
  inputBinding:
    prefix: --metadatatable
- id: in_mask
  doc: .gtf file containing intervals to mask
  type: File
  inputBinding:
    prefix: --mask
- id: in_logic
  doc: 'The logic to use for the filtering (default: Default)'
  type: string
  inputBinding:
    prefix: --logic
- id: in_multimap
  doc: Consider not unique mappings (not reccomended)
  type: boolean
  inputBinding:
    prefix: --multimap
- id: in_sam_tools_threads
  doc: The number of threads to use to sort the bam by cellID file using samtools
  type: long
  inputBinding:
    prefix: --samtools-threads
- id: in_sam_tools_memory
  doc: The number of MB used for every thread by samtools to sort the bam file
  type: long
  inputBinding:
    prefix: --samtools-memory
- id: in_d_type
  doc: 'The dtype of the loom file layers - if more than 6000 molecules/reads per
    gene per cell are expected set uint32 to avoid truncation (default run_10x: uint16)'
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
  doc: 'Set the vebosity level: -v (only warinings) -vv (warinings and info) -vvv
    (warinings, info and debug)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_sample_folder
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
cwlVersion: v1.1
baseCommand:
- velocyto
- run10x
