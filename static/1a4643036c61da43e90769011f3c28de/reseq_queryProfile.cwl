class: CommandLineTool
id: reseq_queryProfile.cwl
inputs:
- id: in_arg_number_threads
  doc: '[ --threads ] arg (=0) Number of threads used (0=auto)'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_verbosity
  doc: "(=4)      Sets the level of verbosity (4=everything,\n0=nothing)"
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_maxlen_deletion
  doc: Output lengths of longest detected deletion to
  type: boolean?
  inputBinding:
    prefix: --maxLenDeletion
- id: in_arg_reference_sequences
  doc: "[ --ref ] arg          Reference sequences in fasta format (gz and bz2\nsupported)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_refseq_bias
  doc: "Output reference sequence bias to file (tsv format;\n- for stdout)"
  type: File?
  inputBinding:
    prefix: --refSeqBias
- id: in_arg_reseq_statistics
  doc: "[ --stats ] arg        Reseq statistics file to extract reference sequence\n\
    bias\n"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_stdout
  doc: --maxReadLength           Output lengths of longest detected read to stdout
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_refseq_bias
  doc: "Output reference sequence bias to file (tsv format;\n- for stdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_refseq_bias)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/reseq:1.1--py38h56fca86_0
cwlVersion: v1.1
baseCommand:
- reseq
- queryProfile
