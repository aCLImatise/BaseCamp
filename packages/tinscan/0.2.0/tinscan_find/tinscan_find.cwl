class: CommandLineTool
id: tinscan_find.cwl
inputs:
- id: in_in_file
  doc: "Input file containing tab delimited LASTZ alignment\ndata."
  type: File
  inputBinding:
    prefix: --infile
- id: in_outdir
  doc: 'Optional: Directory to write output to.'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_gff_out
  doc: Write features to this file as gff3.
  type: File
  inputBinding:
    prefix: --gffOut
- id: in_no_flanks
  doc: If set, do not report flanking hit regions in GFF.
  type: boolean
  inputBinding:
    prefix: --noflanks
- id: in_max_tsd
  doc: "Maximum overlap of insertion flanking sequences in\nQUERY genome to be considered\
    \ as target site\nduplication. Flank pairs with greater overlaps will be\ndiscarded\
    \ Note: Setting this value too high may result\nin tandem duplications in the\
    \ target genome being\nfalsely classified as insertion events."
  type: long
  inputBinding:
    prefix: --maxTSD
- id: in_max_insert
  doc: "Maximum length of sequence to consider as an insertion\nevent."
  type: long
  inputBinding:
    prefix: --maxInsert
- id: in_min_insert
  doc: "Minimum length of sequence to consider as an insertion\nevent. Note: If too\
    \ short may detect small non-TE\nindels."
  type: long
  inputBinding:
    prefix: --minInsert
- id: in_q_gap
  doc: "Maximum gap allowed between aligned flanks in QUERY\nsequence. Equivalent\
    \ to target sequence deleted upon\ninsertion event."
  type: string
  inputBinding:
    prefix: --qGap
- id: in_mini_dent
  doc: Minimum identity for a hit to be considered.
  type: string
  inputBinding:
    prefix: --minIdent
- id: in_max_ident_diff
  doc: "Maximum divergence in identity (to query) allowed\nbetween insert flanking\
    \ sequences.\n"
  type: long
  inputBinding:
    prefix: --maxIdentDiff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Optional: Directory to write output to.'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- tinscan-find
