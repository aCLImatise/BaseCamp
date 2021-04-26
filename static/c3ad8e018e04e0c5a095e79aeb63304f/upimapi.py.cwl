class: CommandLineTool
id: upimapi.py.cwl
inputs:
- id: in_input
  doc: "Input filename - can be: 1. a file containing a list\nof IDs (one per line)\
    \ 2. a BLAST TSV result file\n(requires to be specified with the --blast parameter\n\
    3. a protein FASTA file to be annotated (requires the\n--use-diamond and -db parameters)\
    \ 4. nothing! If so,\nwill read input from command line, and parse as CSV\n(id1,id2,...)"
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Folder to store outputs
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_annotation_columns
  doc: "List of UniProt columns to obtain information from\n(separated by &)"
  type: string?
  inputBinding:
    prefix: --annotation-columns
- id: in_annotation_databases
  doc: "List of databases to cross-check with UniProt\ninformation (separated by &)"
  type: string?
  inputBinding:
    prefix: --annotation-databases
- id: in_blast
  doc: "If input file is in BLAST TSV format (will consider\none ID per line if not\
    \ set)"
  type: boolean?
  inputBinding:
    prefix: --blast
- id: in_full_id
  doc: "If IDs in database are in 'full' format: tr|XXX|XXX"
  type: boolean?
  inputBinding:
    prefix: --full-id
- id: in_fast_a
  doc: Output will be generated in FASTA format
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_step
  doc: "How many IDs to submit per request to the API (default\nis 1000)"
  type: long?
  inputBinding:
    prefix: --step
- id: in_max_tries
  doc: "How many times to try obtaining information from\nUniProt before giving up"
  type: long?
  inputBinding:
    prefix: --max-tries
- id: in_use_diamond
  doc: "Use DIAMOND to annotate sequences before mapping IDs.\nRequires protein FASTA\
    \ files as input for \"-db\" and\n\"-i\" parameters"
  type: boolean?
  inputBinding:
    prefix: --use-diamond
- id: in_database
  doc: "Reference database for annotation with DIAMOND.\nNOTICE: if database's IDs\
    \ are in 'full' format\n(tr|XXX|XXX), specify with \"\"--full-id\" parameter."
  type: string?
  inputBinding:
    prefix: --database
- id: in_threads
  doc: Number of threads to use in annotation steps
  type: long?
  inputBinding:
    prefix: --threads
- id: in_max_target_seqs
  doc: Number of annotations to output per sequence inputed
  type: long?
  inputBinding:
    prefix: --max-target-seqs
- id: in_block_size
  doc: "Billions of sequence letters to be processed at a time\n(UPIMAPI determines\
    \ best value for this parameter if\nnot set"
  type: long?
  inputBinding:
    prefix: --block-size
- id: in_index_chunks
  doc: "Number of chunks for processing the seed index\n(UPIMAPI determines best value\
    \ for this parameter if\nnot set"
  type: long?
  inputBinding:
    prefix: --index-chunks
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/upimapi:1.2.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- upimapi.py
