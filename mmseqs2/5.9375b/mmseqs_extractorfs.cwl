class: CommandLineTool
id: ../../../mmseqs_extractorfs.cwl
inputs:
- id: min_length
  doc: '1               minimum codon number in open reading frames                 '
  type: boolean
  inputBinding:
    prefix: --min-length
- id: max_length
  doc: '2147483647      maximum codon number in open reading frames                 '
  type: boolean
  inputBinding:
    prefix: --max-length
- id: max_gaps
  doc: 2147483647      maximum number of codons with gaps or unknown residues before
    an open reading frame is rejected
  type: boolean
  inputBinding:
    prefix: --max-gaps
- id: contig_start_mode
  doc: '2               Contig start can be 0: incomplete, 1: complete, 2: both     '
  type: boolean
  inputBinding:
    prefix: --contig-start-mode
- id: contig_end_mode
  doc: '2               Contig end can be 0: incomplete, 1: complete, 2: both       '
  type: boolean
  inputBinding:
    prefix: --contig-end-mode
- id: orf_start_mode
  doc: '0               Orf fragment can be 0: from start to stop, 1: from any to
    stop, 2: from last encountered start to stop (no start in the middle)'
  type: boolean
  inputBinding:
    prefix: --orf-start-mode
- id: forward_frames
  doc: 1,2,3           comma-seperated list of ORF frames on the forward strand to
    be extracted
  type: boolean
  inputBinding:
    prefix: --forward-frames
- id: reverse_frames
  doc: 1,2,3           comma-seperated list of ORF frames on the reverse strand to
    be extracted
  type: boolean
  inputBinding:
    prefix: --reverse-frames
- id: use_all_table_starts
  doc: false           use all alteratives for a start codon in the genetic table,
    if false - only ATG (AUG)
  type: boolean
  inputBinding:
    prefix: --use-all-table-starts
- id: id_offset
  doc: '0               numeric ids in index file are offset by this value          '
  type: boolean
  inputBinding:
    prefix: --id-offset
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- extractorfs
