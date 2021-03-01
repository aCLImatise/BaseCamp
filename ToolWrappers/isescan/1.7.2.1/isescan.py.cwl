class: CommandLineTool
id: isescan.py.cwl
inputs:
- id: in_remove_short_is
  doc: "remove incomplete (partial) IS elements which include IS\nelement with length\
    \ < 400 or single copy IS element\nwithout perfect TIR."
  type: boolean?
  inputBinding:
    prefix: --removeShortIS
- id: in_no_frag_genes_can
  doc: "use the annotated protein sequences in NCBI GenBank file\n(.gbk which must\
    \ be in the same folder with genome\nsequence file), instead of the protein sequences\n\
    predicted/translated by FragGeneScan. (Experimental\nfeature!)"
  type: boolean?
  inputBinding:
    prefix: --no-FragGeneScan
- id: in_n_thread
  doc: "number of CPU cores used for FragGeneScan and hmmer. By\ndefault one will\
    \ be used.\n"
  type: long?
  inputBinding:
    prefix: --nthread
- id: in_seq_file
  doc: sequence file in fasta format
  type: string
  inputBinding:
    position: 0
- id: in_path_two_proteome
  doc: "directory where proteome (each line corresponds to a\nprotein sequence database\
    \ translated from a genome) files\nwill be placed"
  type: long
  inputBinding:
    position: 1
- id: in_path_two_hmm
  doc: directory where the results of hmmsearch will be placed
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- isescan.py
