class: CommandLineTool
id: isescan.py.cwl
inputs:
- id: in_seq_file
  doc: '[--nthread NTHREAD]'
  type: File?
  inputBinding:
    prefix: --seqfile
- id: in_remove_short_is
  doc: "Remove incomplete (partial) IS elements which include IS\nelement with length\
    \ < 400 or single copy IS element\nwithout perfect TIR."
  type: boolean?
  inputBinding:
    prefix: --removeShortIS
- id: in_no_frag_genes_can
  doc: "Use the annotated protein sequences in NCBI GenBank file\n(.gbk which must\
    \ be in the same folder with genome\nsequence file), instead of the protein sequences\n\
    predicted/translated by FragGeneScan. (Experimental\nfeature!)"
  type: boolean?
  inputBinding:
    prefix: --no-FragGeneScan
- id: in_n_thread
  doc: "Number of CPU cores used for FragGeneScan and hmmer, 1 by\ndefault.\n"
  type: long?
  inputBinding:
    prefix: --nthread
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/isescan:1.7.2.3--h516909a_0
cwlVersion: v1.1
baseCommand:
- isescan.py
