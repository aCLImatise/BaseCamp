class: CommandLineTool
id: asqcan.cwl
inputs:
- id: in_fast_q_dir
  doc: Path to a directory with your interleaved fastq files.
  type: File?
  inputBinding:
    prefix: --fastq-dir
- id: in_output_directory
  doc: "Path to the output directory. A directory will be\ncreated if one does not\
    \ exist."
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_blast_database
  doc: "Path to the local nt blast database. This pipeline\ndoes not require you to\
    \ have a local copy of the nt\ndatabase but without it you will not be able to\
    \ use\nsimilarity data for blobtools. Similarity data adds\nsignificantly to the\
    \ blobplot and blobtools table\noutputs of this pipeline. See https://blast.ncbi.nlm.n\n\
    ih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE=\nDownload to install a\
    \ local nt database."
  type: File?
  inputBinding:
    prefix: --blast_database
- id: in_threads
  doc: Number of threads to use for multiprocessing.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_max_memory
  doc: "Maximum amount of RAM to assign to the pipeline in GB\n(Just the number)."
  type: long?
  inputBinding:
    prefix: --max_memory
- id: in_force
  doc: Overwrite files in the output directories.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: "Increase verbosity on command line output (n.b.\nverbose output is always\
    \ saved to asqcan.log in the\noutput directory).\n"
  type: Directory?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "Path to the output directory. A directory will be\ncreated if one does not\
    \ exist."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_verbose
  doc: "Increase verbosity on command line output (n.b.\nverbose output is always\
    \ saved to asqcan.log in the\noutput directory).\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_verbose)
hints: []
cwlVersion: v1.1
baseCommand:
- asqcan
