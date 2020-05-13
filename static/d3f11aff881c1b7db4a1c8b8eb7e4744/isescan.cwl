class: CommandLineTool
id: isescan.py.cwl
inputs:
- id: seq_file
  doc: sequence file in fasta format
  type: string
  inputBinding:
    position: 0
- id: path2_proteome
  doc: directory where proteome (each line corresponds to a protein sequence database
    translated from a genome) files will be placed
  type: File
  inputBinding:
    position: 1
- id: path2hmm
  doc: directory where the results of hmmsearch will be placed
  type: File
  inputBinding:
    position: 2
- id: remove_short_is
  doc: remove incomplete (partial) IS elements which include IS element with length
    < 400 or single copy IS element without perfect TIR.
  type: boolean
  inputBinding:
    prefix: --removeShortIS
- id: no_frag_genes_can
  doc: use the annotated protein sequences in NCBI GenBank file (.gbk which must be
    in the same folder with genome sequence file), instead of the protein sequences
    predicted/translated by FragGeneScan. (Experimental feature!)
  type: boolean
  inputBinding:
    prefix: --no-FragGeneScan
- id: n_thread
  doc: number of CPU cores used for FragGeneScan and hmmer. By default one will be
    used.
  type: string
  inputBinding:
    prefix: --nthread
outputs: []
cwlVersion: v1.1
baseCommand:
- isescan.py
