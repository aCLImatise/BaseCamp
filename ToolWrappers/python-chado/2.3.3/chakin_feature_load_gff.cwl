class: CommandLineTool
id: chakin_feature_load_gff.cwl
inputs:
- id: in_landmark_type
  doc: "Type of the landmarks (will speed up loading if\nprovided, e.g. contig, should\
    \ be a term of the\nSequence ontology)"
  type: string
  inputBinding:
    prefix: --landmark_type
- id: in_re_protein
  doc: "Replacement string for the protein name using\ncapturing groups defined by\
    \ --re_protein_capture"
  type: string
  inputBinding:
    prefix: --re_protein
- id: in_re_protein_capture
  doc: "Regular expression to capture groups in mRNA name\nto use in --re_protein\
    \ (e.g. \"^(.*?)-R([A-Z]+)$\",\ndefault=\"^(.*?)$\")  [default: ^(.*?)$]"
  type: string
  inputBinding:
    prefix: --re_protein_capture
- id: in_fast_a
  doc: "Path to a Fasta containing sequences for some\nfeatures. When creating a feature,\
    \ if its\nsequence is in this fasta file it will be loaded.\nOtherwise for mRNA\
    \ and polypeptides it will be\ncomputed from the genome sequence (if available),\n\
    otherwise it will be left empty."
  type: File
  inputBinding:
    prefix: --fasta
- id: in_no_seq_compute
  doc: "Disable the computation of mRNA and polypeptides\nsequences based on genome\
    \ sequence and positions."
  type: boolean
  inputBinding:
    prefix: --no_seq_compute
- id: in_quiet
  doc: Hide progress information
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_add_only
  doc: "Use this flag if you're not updating existing\nfeatures, but just adding new\
    \ features to the\nselected analysis and organism. It will speedup\nloading, and\
    \ reduce memory usage, but might\nproduce errors in case of already existing\n\
    feature."
  type: boolean
  inputBinding:
    prefix: --add_only
- id: in_protein_id_attr
  doc: "Attribute containing the protein uniquename. It\nis searched at the mRNA level,\
    \ and if not found\nat CDS level."
  type: string
  inputBinding:
    prefix: --protein_id_attr
- id: in_none
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chakin
- feature
- load_gff
