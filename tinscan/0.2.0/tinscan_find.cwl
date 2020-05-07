class: CommandLineTool
id: tinscan_find.cwl
inputs:
- id: in_file
  doc: Input file containing tab delimited LASTZ alignment data.
  type: string
  inputBinding:
    prefix: --infile
- id: outdir
  doc: 'Optional: Directory to write output to.'
  type: string
  inputBinding:
    prefix: --outdir
- id: gff_out
  doc: Write features to this file as gff3.
  type: string
  inputBinding:
    prefix: --gffOut
- id: no_flanks
  doc: If set, do not report flanking hit regions in GFF.
  type: boolean
  inputBinding:
    prefix: --noflanks
- id: max_tsd
  doc: 'Maximum overlap of insertion flanking sequences in QUERY genome to be considered
    as target site duplication. Flank pairs with greater overlaps will be discarded
    Note: Setting this value too high may result in tandem duplications in the target
    genome being falsely classified as insertion events.'
  type: long
  inputBinding:
    prefix: --maxTSD
- id: max_insert
  doc: Maximum length of sequence to consider as an insertion event.
  type: long
  inputBinding:
    prefix: --maxInsert
- id: min_insert
  doc: 'Minimum length of sequence to consider as an insertion event. Note: If too
    short may detect small non-TE indels.'
  type: long
  inputBinding:
    prefix: --minInsert
- id: q_gap
  doc: Maximum gap allowed between aligned flanks in QUERY sequence. Equivalent to
    target sequence deleted upon insertion event.
  type: string
  inputBinding:
    prefix: --qGap
- id: mini_dent
  doc: Minimum identity for a hit to be considered.
  type: long
  inputBinding:
    prefix: --minIdent
- id: max_ident_diff
  doc: Maximum divergence in identity (to query) allowed between insert flanking sequences.
  type: long
  inputBinding:
    prefix: --maxIdentDiff
outputs: []
cwlVersion: v1.1
baseCommand:
- tinscan-find
