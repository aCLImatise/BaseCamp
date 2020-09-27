class: CommandLineTool
id: pathoscope_MAP.cwl
inputs:
- id: in_input_read_file
  doc: Input Read Fastq File (Unpaired/Single-end)
  type: File
  inputBinding:
    prefix: -U
- id: in_one
  doc: Input Read Fastq File (Pair 1)
  type: long
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: Input Read Fastq File (Pair 2)
  type: long
  inputBinding:
    prefix: '-2'
- id: in_target_ref_files
  doc: "Target Reference Genome Fasta Files Full Path (Comma\nSeparated)"
  type: File
  inputBinding:
    prefix: -targetRefFiles
- id: in_filter_ref_files
  doc: "Filter Reference Genome Fasta Files Full Path (Comma\nSeparated)"
  type: File
  inputBinding:
    prefix: -filterRefFiles
- id: in_target_align_params
  doc: "Target Mapping Bowtie2 Parameters (Default: Pathoscope\nchosen best parameters)"
  type: long
  inputBinding:
    prefix: -targetAlignParams
- id: in_filter_align_params
  doc: "Filter Mapping Bowtie2 Parameters (Default: Use the\nsame Target Mapping Bowtie2\
    \ parameters)"
  type: long
  inputBinding:
    prefix: -filterAlignParams
- id: in_outdir
  doc: Output Directory (Default=. (current directory))
  type: Directory
  inputBinding:
    prefix: -outDir
- id: in_out_align
  doc: Output Alignment File Name (Default=outalign.sam)
  type: File
  inputBinding:
    prefix: -outAlign
- id: in_index_dir
  doc: Index Directory (Default=. (current directory))
  type: Directory
  inputBinding:
    prefix: -indexDir
- id: in_target_index_prefixes
  doc: Target Index Prefixes (Comma Separated)
  type: string
  inputBinding:
    prefix: -targetIndexPrefixes
- id: in_filter_index_prefixes
  doc: Filter Index Prefixes (Comma Separated)
  type: string
  inputBinding:
    prefix: -filterIndexPrefixes
- id: in_target_align_files
  doc: Target Alignment Files Full Path (Comma Separated)
  type: File
  inputBinding:
    prefix: -targetAlignFiles
- id: in_filter_align_files
  doc: Filter Alignment Files Full Path (Comma Separated)
  type: File
  inputBinding:
    prefix: -filterAlignFiles
- id: in_bt_home
  doc: "Full Path to Bowtie2 binary directory (Default: Uses\nbowtie2 in system path)"
  type: File
  inputBinding:
    prefix: -btHome
- id: in_num_threads
  doc: "Number of threads to use by aligner (bowtie2) if\ndifferent from default (8)"
  type: long
  inputBinding:
    prefix: -numThreads
- id: in_exp_tag
  doc: "Experiment Tag added to files generated for\nidentification (Default: pathomap)\n"
  type: string
  inputBinding:
    prefix: -expTag
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output Directory (Default=. (current directory))
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_out_align
  doc: Output Alignment File Name (Default=outalign.sam)
  type: File
  outputBinding:
    glob: $(inputs.in_out_align)
cwlVersion: v1.1
baseCommand:
- pathoscope
- MAP
