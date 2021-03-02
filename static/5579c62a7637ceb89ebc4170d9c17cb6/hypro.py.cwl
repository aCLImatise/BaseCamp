class: CommandLineTool
id: hypro.py.cwl
inputs:
- id: in_modus_hypro_decide
  doc: "['restricted', 'full'], --modus ['restricted', 'full']\nModus of HyPro to\
    \ decide either for an all\nhypothetical protein annotation or restricted (only\n\
    full blanks with no partial annotation). Valid\narguments: 'full' and 'restricted'"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_input
  doc: Specify PATH to the gff file, that shall be extended.
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Specify PATH to a directory. HyPro will generate all\noutput to this."
  type: File?
  inputBinding:
    prefix: --output
- id: in_database
  doc: "Specify the target db to search in for annotation\nextension. Available options:\
    \ 'uniprotkb',\n'uniref100', 'uniref90', 'uniref50', 'pdb' [uniprotkb]"
  type: long?
  inputBinding:
    prefix: --database
- id: in_mm_seqs_two
  doc: "Specify the path to the mmseqs2.sh. If using the conda\npackage, 'mmseqs2.sh'\
    \ is enough. Default path is\n'./scripts/msmeqs2.sh'"
  type: File?
  inputBinding:
    prefix: --mmseqs2
- id: in_custom_db
  doc: "Specify a path. If no database is found, HyPro will\nbuild it. Requires an\
    \ according -d configuration."
  type: File?
  inputBinding:
    prefix: --custom-db
- id: in_evalue
  doc: "Include sequence matches with < e-value threshold into\nthe profile. Requires\
    \ a FLOAT >= 0.0. [0.1]"
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_min_aln_len
  doc: "Specify the minimum alignment length as INT in range 0\nto MAX aln length.\
    \ [0]"
  type: long?
  inputBinding:
    prefix: --min-aln-len
- id: in_p_ident
  doc: "List only matches above this sequence identity for\nclustering. Enter a FLOAT\
    \ between 0 and 1.0. [0.0]"
  type: double?
  inputBinding:
    prefix: --pident
- id: in_threads
  doc: "Define number of threads to use by mmseqs indexdb,\nmmseqs search and mmseqs\
    \ convertalis. [1]\n"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Specify PATH to a directory. HyPro will generate all\noutput to this."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- hypro.py
