class: CommandLineTool
id: metaeuk_unitesetstofasta.cwl
inputs:
- id: protein
  doc: translate the joint exons coding sequence to amino acids [0,1] [0]
  type: long
  inputBinding:
    prefix: --protein
- id: translation_table
  doc: 1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL,
    5) INVERT_MITOCHONDRIAL, 6) CILIATE 9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11)
    PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL
    15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL,
    22) SCENEDESMUS_MITOCHONDRIAL 23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL,
    25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA 29) MESODINIUM,
    30) PERTRICH, 31) BLASTOCRITHIDIA [1]
  type: long
  inputBinding:
    prefix: --translation-table
- id: target_key
  doc: write the target key (internal DB identifier) instead of its accession. By
    default (0) target accession will be written [0,1] [0]
  type: long
  inputBinding:
    prefix: --target-key
- id: threads
  doc: Number of CPU-cores used (all by default) [8]
  type: long
  inputBinding:
    prefix: --threads
- id: compressed
  doc: Write compressed output [0]
  type: long
  inputBinding:
    prefix: --compressed
- id: v
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long
  inputBinding:
    prefix: -v
- id: levy
  doc: 'E, Mirdita M, Soeding J: MetaEuk – sensitive, high-throughput gene discovery
    and annotation for large-scale eukaryotic metagenomics. biorxiv, 851964 (2019).'
  type: string
  inputBinding:
    prefix: '- Levy'
outputs: []
cwlVersion: v1.1
baseCommand:
- metaeuk
- unitesetstofasta
