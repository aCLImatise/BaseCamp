class: CommandLineTool
id: spacepharer_createsetdb.cwl
inputs:
- id: in_dbtype
  doc: 'Database type 0: auto, 1: amino acid 2: nucleotides [0]'
  type: long?
  inputBinding:
    prefix: --dbtype
- id: in_shuffle
  doc: Shuffle input database [1]
  type: boolean?
  inputBinding:
    prefix: --shuffle
- id: in_created_b_mode
  doc: 'Createdb mode 0: copy data, 1: soft link data and write new index (works only
    with single line fasta/q) [0]'
  type: long?
  inputBinding:
    prefix: --createdb-mode
- id: in_id_offset
  doc: Numeric ids in index file are offset by this value [0]
  type: long?
  inputBinding:
    prefix: --id-offset
- id: in_translation_table
  doc: "1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL,\
    \ 5) INVERT_MITOCHONDRIAL, 6) CILIATE\n9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID,\
    \ 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL\n\
    15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL,\
    \ 22) SCENEDESMUS_MITOCHONDRIAL\n23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL,\
    \ 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA\n29)\
    \ MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA [1]"
  type: long?
  inputBinding:
    prefix: --translation-table
- id: in_add_orf_stop
  doc: Add stop codon '*' at complete start and end [0]
  type: boolean?
  inputBinding:
    prefix: --add-orf-stop
- id: in_stat
  doc: 'One of: linecount, mean, doolittle, charges, seqlen, firstline []'
  type: string?
  inputBinding:
    prefix: --stat
- id: in_tsv
  doc: Return output in TSV format [0]
  type: boolean?
  inputBinding:
    prefix: --tsv
- id: in_reverse_fragments
  doc: Reverse AA fragments to compute under null [0,1] [0]
  type: long?
  inputBinding:
    prefix: --reverse-fragments
- id: in_extractor_f_spacer
  doc: change parameter settings for extractorfs when createsetdb for spacer db [0,1]
    [0]
  type: long?
  inputBinding:
    prefix: --extractorf-spacer
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
- id: in_threads
  doc: Number of CPU-cores used (all by default) [8]
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- spacepharer
- createsetdb
