class: CommandLineTool
id: pathoscope_MAP.cwl
inputs:
- id: target_ref_files
  doc: Target Reference Genome Fasta Files Full Path (Comma Separated)
  type: string
  inputBinding:
    prefix: -targetRefFiles
- id: filter_ref_files
  doc: Filter Reference Genome Fasta Files Full Path (Comma Separated)
  type: string
  inputBinding:
    prefix: -filterRefFiles
- id: target_align_params
  doc: 'Target Mapping Bowtie2 Parameters (Default: Pathoscope chosen best parameters)'
  type: string
  inputBinding:
    prefix: -targetAlignParams
- id: filter_align_params
  doc: 'Filter Mapping Bowtie2 Parameters (Default: Use the same Target Mapping Bowtie2
    parameters)'
  type: string
  inputBinding:
    prefix: -filterAlignParams
- id: outdir
  doc: Output Directory (Default=. (current directory))
  type: string
  inputBinding:
    prefix: -outDir
- id: out_align
  doc: Output Alignment File Name (Default=outalign.sam)
  type: string
  inputBinding:
    prefix: -outAlign
- id: index_dir
  doc: Index Directory (Default=. (current directory))
  type: string
  inputBinding:
    prefix: -indexDir
- id: target_index_prefixes
  doc: Target Index Prefixes (Comma Separated)
  type: string
  inputBinding:
    prefix: -targetIndexPrefixes
- id: filter_index_prefixes
  doc: Filter Index Prefixes (Comma Separated)
  type: string
  inputBinding:
    prefix: -filterIndexPrefixes
- id: target_align_files
  doc: Target Alignment Files Full Path (Comma Separated)
  type: string
  inputBinding:
    prefix: -targetAlignFiles
- id: filter_align_files
  doc: Filter Alignment Files Full Path (Comma Separated)
  type: string
  inputBinding:
    prefix: -filterAlignFiles
- id: bt_home
  doc: 'Full Path to Bowtie2 binary directory (Default: Uses bowtie2 in system path)'
  type: string
  inputBinding:
    prefix: -btHome
- id: num_threads
  doc: Number of threads to use by aligner (bowtie2) if different from default (8)
  type: string
  inputBinding:
    prefix: -numThreads
- id: exp_tag
  doc: 'Experiment Tag added to files generated for identification (Default: pathomap)'
  type: string
  inputBinding:
    prefix: -expTag
outputs: []
cwlVersion: v1.1
baseCommand:
- pathoscope
- MAP
