class: CommandLineTool
id: velocyto_run.cwl
inputs:
- id: in_bc_file
  doc: "Valid barcodes file, to filter the bam. If --bcfile is not specified all the\
    \ cell barcodes will be included.\nCell barcodes should be specified in the bcfile\
    \ as the `CB` tag for each read"
  type: File?
  inputBinding:
    prefix: --bcfile
- id: in_output_folder
  doc: Output folder, if it does not exist it will be created.
  type: Directory?
  inputBinding:
    prefix: --outputfolder
- id: in_sample_id
  doc: The sample name that will be used to retrieve informations from metadatatable
  type: File?
  inputBinding:
    prefix: --sampleid
- id: in_metadata_table
  doc: Table containing metadata of the various samples (csv formatted, rows are samples
    and cols are entries)
  type: File?
  inputBinding:
    prefix: --metadatatable
- id: in_mask
  doc: .gtf file containing intervals to mask
  type: File?
  inputBinding:
    prefix: --mask
- id: in_one_file_per_cell
  doc: "If this flag is used every bamfile passed is interpreted as an independent\
    \ cell, otherwise multiple files are interpreted as batch of different cells to\
    \ be analyzed together.\nImportant: cells reads should not be distributed over\
    \ multiple bamfiles is not supported!!\n(default: off)"
  type: boolean?
  inputBinding:
    prefix: --onefilepercell
- id: in_logic
  doc: 'The logic to use for the filtering (default: Default)'
  type: string?
  inputBinding:
    prefix: --logic
- id: in_without_umi
  doc: 'If this flag is used the data is assumed UMI-less and reads are counted instead
    of molecules (default: off)'
  type: boolean?
  inputBinding:
    prefix: --without-umi
- id: in_umi_extension
  doc: "In case UMI is too short to guarantee uniqueness (without information from\
    \ the ampping) set this parameter to `chr`, `Gene` ro `[N]bp`\nIf set to `chr`\
    \ the mapping position (binned to 10Gb intervals) will be appended to `UB` (ideal\
    \ for InDrops+dropEst). If set to\n`Gene` then the `GX` tag will be appended to\
    \ the `UB` tag.\nIf set to `[N]bp` the first N bases of the sequence will be used\
    \ to extend `UB` (ideal for STRT). (Default: `no`)"
  type: long?
  inputBinding:
    prefix: --umi-extension
- id: in_multimap
  doc: Consider not unique mappings (not reccomended)
  type: boolean?
  inputBinding:
    prefix: --multimap
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
    gene per cell are expected set uint32 to avoid truncation (default run: uint32)'
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
- id: in_bam_file_dot_dot_dot
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
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints: []
cwlVersion: v1.1
baseCommand:
- velocyto
- run
