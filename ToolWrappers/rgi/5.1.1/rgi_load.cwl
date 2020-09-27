class: CommandLineTool
id: rgi_load.cwl
inputs:
- id: in_card_json
  doc: must be a card database json file
  type: File
  inputBinding:
    prefix: --card_json
- id: in_card_annotation
  doc: annotated reference FASTA
  type: string
  inputBinding:
    prefix: --card_annotation
- id: in_wildcard_annotation
  doc: annotated reference FASTA
  type: string
  inputBinding:
    prefix: --wildcard_annotation
- id: in_wildcard_index
  doc: wildcard index file (index-for-model-sequences.txt)
  type: File
  inputBinding:
    prefix: --wildcard_index
- id: in_wildcard_version
  doc: specify variants version used
  type: string
  inputBinding:
    prefix: --wildcard_version
- id: in_baits_annotation
  doc: annotated reference FASTA
  type: string
  inputBinding:
    prefix: --baits_annotation
- id: in_baits_index
  doc: baits index file (baits-probes-with-sequence-info.txt)
  type: File
  inputBinding:
    prefix: --baits_index
- id: in_km_er_database
  doc: json of kmer database
  type: string
  inputBinding:
    prefix: --kmer_database
- id: in_amr_km_ers
  doc: txt file of all amr kmers
  type: File
  inputBinding:
    prefix: --amr_kmers
- id: in_km_er_size
  doc: kmer size if loading kmer files
  type: long
  inputBinding:
    prefix: --kmer_size
- id: in_local
  doc: "use local database (default: uses database in\nexecutable directory)"
  type: boolean
  inputBinding:
    prefix: --local
- id: in_debug
  doc: debug mode
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rgi
- load
