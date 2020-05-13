class: CommandLineTool
id: asqcan.cwl
inputs:
- id: fast_q_dir
  doc: Path to a directory with your interleaved fastq files.
  type: string
  inputBinding:
    prefix: --fastq-dir
- id: output_directory
  doc: Path to the output directory. A directory will be created if one does not exist.
  type: string
  inputBinding:
    prefix: --output-directory
- id: blast_database
  doc: Path to the local nt blast database. This pipeline does not require you to
    have a local copy of the nt database but without it you will not be able to use
    similarity data for blobtools. Similarity data adds significantly to the blobplot
    and blobtools table outputs of this pipeline. See https://blast.ncbi.nlm.n ih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE=
    Download to install a local nt database.
  type: string
  inputBinding:
    prefix: --blast_database
- id: threads
  doc: Number of threads to use for multiprocessing.
  type: string
  inputBinding:
    prefix: --threads
- id: max_memory
  doc: Maximum amount of RAM to assign to the pipeline in GB (Just the number).
  type: string
  inputBinding:
    prefix: --max_memory
- id: force
  doc: Overwrite files in the output directories.
  type: boolean
  inputBinding:
    prefix: --force
- id: verbose
  doc: Increase verbosity on command line output (n.b. verbose output is always saved
    to asqcan.log in the output directory).
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- asqcan
