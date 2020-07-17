class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hypro.py.cwl
inputs:
- id: modus_decide_restricted
  doc: "['restricted', 'full'], --modus ['restricted', 'full'] Modus of HyPro to decide\
    \ either for an all hypothetical protein annotation or restricted (only full blanks\
    \ with no partial annotation). Valid arguments: 'full' and 'restricted'"
  type: boolean
  inputBinding:
    prefix: -m
- id: input
  doc: Specify PATH to the gff file, that shall be extended.
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: Specify PATH to a directory. HyPro will generate all output to this.
  type: File
  inputBinding:
    prefix: --output
- id: database
  doc: "Specify the target db to search in for annotation extension. Available options:\
    \ 'uniprotkb', 'uniref100', 'uniref90', 'uniref50', 'pdb' [uniprotkb]"
  type: string
  inputBinding:
    prefix: --database
- id: mm_seqs_two
  doc: Specify the path to the mmseqs2.sh. If using the conda package, 'mmseqs2.sh'
    is enough. Default path is './scripts/msmeqs2.sh'
  type: File
  inputBinding:
    prefix: --mmseqs2
- id: custom_db
  doc: Specify a path. If no database is found, HyPro will build it. Requires an according
    -d configuration.
  type: string
  inputBinding:
    prefix: --custom-db
- id: evalue
  doc: Include sequence matches with < e-value threshold into the profile. Requires
    a FLOAT >= 0.0. [0.1]
  type: double
  inputBinding:
    prefix: --evalue
- id: min_aln_len
  doc: Specify the minimum alignment length as INT in range 0 to MAX aln length. [0]
  type: long
  inputBinding:
    prefix: --min-aln-len
- id: p_ident
  doc: List only matches above this sequence identity for clustering. Enter a FLOAT
    between 0 and 1.0. [0.0]
  type: double
  inputBinding:
    prefix: --pident
- id: threads
  doc: Define number of threads to use by mmseqs indexdb, mmseqs search and mmseqs
    convertalis. [1]
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- hypro.py
