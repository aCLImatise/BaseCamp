class: CommandLineTool
id: psytrans.py.cwl
inputs:
- id: in_species_one
  doc: Reference sequences for the first species
  type: long?
  inputBinding:
    prefix: --species1
- id: in_species_two
  doc: Reference sequences for the second species
  type: long?
  inputBinding:
    prefix: --species2
- id: in_blast_results
  doc: Blast results obtained
  type: string?
  inputBinding:
    prefix: --blastResults
- id: in_blast_type
  doc: Type of blast search to be performed
  type: string?
  inputBinding:
    prefix: --blastType
- id: in_nb_threads
  doc: Number of threads to run the BLAST search and SVM
  type: long?
  inputBinding:
    prefix: --nbThreads
- id: in_max_beste_value
  doc: Maximum e-value
  type: long?
  inputBinding:
    prefix: --maxBestEvalue
- id: in_number_of_seq
  doc: Maximum number of sequences for training and testing
  type: long?
  inputBinding:
    prefix: --numberOfSeq
- id: in_min_seq_size
  doc: Minimum sequence size for training and testing
  type: long?
  inputBinding:
    prefix: --minSeqSize
- id: in_min_word_size
  doc: Minimum value of DNA word length
  type: long?
  inputBinding:
    prefix: --minWordSize
- id: in_max_word_size
  doc: Maxmimum value of DNA word length
  type: long?
  inputBinding:
    prefix: --maxWordSize
- id: in_both_strands
  doc: Compute kmers for the forward and reverse strands
  type: boolean?
  inputBinding:
    prefix: --bothStrands
- id: in_verbose
  doc: Turn Verbose mode on?
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_tempdir
  doc: Location (prefix) of the temporary directory
  type: Directory?
  inputBinding:
    prefix: --tempDir
- id: in_outdir
  doc: Name of optional output directory
  type: Directory?
  inputBinding:
    prefix: --outDir
- id: in_clear_temp
  doc: Clear all temporary data upon completion
  type: boolean?
  inputBinding:
    prefix: --clearTemp
- id: in_stop_after
  doc: Optional exit upon completion of stage.
  type: string?
  inputBinding:
    prefix: --stopAfter
- id: in_restart
  doc: Continue process from last exit stage
  type: boolean?
  inputBinding:
    prefix: --restart
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Name of optional output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/psytrans:2.0.0--0
cwlVersion: v1.1
baseCommand:
- psytrans.py
