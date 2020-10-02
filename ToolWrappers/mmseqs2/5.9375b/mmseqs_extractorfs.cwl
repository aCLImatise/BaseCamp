class: CommandLineTool
id: mmseqs_extractorfs.cwl
inputs:
- id: in_min_length
  doc: 1               minimum codon number in open reading frames
  type: boolean
  inputBinding:
    prefix: --min-length
- id: in_max_length
  doc: 2147483647      maximum codon number in open reading frames
  type: boolean
  inputBinding:
    prefix: --max-length
- id: in_max_gaps
  doc: 2147483647      maximum number of codons with gaps or unknown residues before
    an open reading frame is rejected
  type: boolean
  inputBinding:
    prefix: --max-gaps
- id: in_contig_start_mode
  doc: '2               Contig start can be 0: incomplete, 1: complete, 2: both'
  type: boolean
  inputBinding:
    prefix: --contig-start-mode
- id: in_contig_end_mode
  doc: '2               Contig end can be 0: incomplete, 1: complete, 2: both'
  type: boolean
  inputBinding:
    prefix: --contig-end-mode
- id: in_orf_start_mode
  doc: '0               Orf fragment can be 0: from start to stop, 1: from any to
    stop, 2: from last encountered start to stop (no start in the middle)'
  type: boolean
  inputBinding:
    prefix: --orf-start-mode
- id: in_forward_frames
  doc: 1,2,3           comma-seperated list of ORF frames on the forward strand to
    be extracted
  type: boolean
  inputBinding:
    prefix: --forward-frames
- id: in_reverse_frames
  doc: 1,2,3           comma-seperated list of ORF frames on the reverse strand to
    be extracted
  type: boolean
  inputBinding:
    prefix: --reverse-frames
- id: in_translation_table
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
- id: in_use_all_table_starts
  doc: false           use all alteratives for a start codon in the genetic table,
    if false - only ATG (AUG)
  type: boolean
  inputBinding:
    prefix: --use-all-table-starts
- id: in_id_offset
  doc: 0               numeric ids in index file are offset by this value
  type: boolean
  inputBinding:
    prefix: --id-offset
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mmseqs
- extractorfs
