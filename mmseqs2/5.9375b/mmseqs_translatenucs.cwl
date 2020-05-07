class: CommandLineTool
id: mmseqs_translatenucs.cwl
inputs:
- id: translation_table
  doc: 1               1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL,
    4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE, 9) FLATWORM_MITOCHONDRIAL,
    10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL,
    15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL,
    22) SCENEDESMUS_MITOCHONDRIAL, 23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL,
    25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA, 29) MESODINIUM,
    30) PERTRICH, 31) BLASTOCRITHIDIA
  type: boolean
  inputBinding:
    prefix: --translation-table
- id: add_orf_stop
  doc: 'false           add * at complete start and end                             '
  type: boolean
  inputBinding:
    prefix: --add-orf-stop
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- translatenucs
