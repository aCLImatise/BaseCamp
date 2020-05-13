class: CommandLineTool
id: vtools_report_sequence.cwl
inputs:
- id: regions
  doc: One or more chromosome regions in the format of chr:start-end (e.g. chr21:33,031,597-33,041,570),
    Field:Value from a region-based annotation database (e.g. refGene.name2:TRIM2
    or refGene_exon.name:NM_000947), or set options of several regions (&, |, -, and
    ^ for intersection, union, difference, and symmetric difference). Several regions
    will be printed if the name matches more than one regions. Chromosome positions
    are 1-based and are inclusive at both ends so the chromosome region has a length
    of end-start+1 bp. A reversed complementary sequence will be outputted if starting
    position is after the ending position.
  type: string
  inputBinding:
    position: 0
- id: build
  doc: '[BUILD]       Output sequence at specified build of reference genome. The
    primary reference genome of the project will be used if by default.'
  type: boolean
  inputBinding:
    prefix: --build
- id: numbered
  doc: '[{left,right}] If specified, add position of the first or last basepair of
    each line to the left or right of the line, and insert a space at every 10 basepair'
  type: boolean
  inputBinding:
    prefix: --numbered
- id: char_per_line
  doc: Number of characters (excluding space and leading numbers) per line. Default
    to 70 in regular and 60 in numbered format.
  type: string
  inputBinding:
    prefix: --char_per_line
- id: transcribe
  doc: '[GENE [GENE ...]] Transcribe DNA sequence into RNA sequence. variant tools
    will look in the refGene database, find all genes that overlap with the region,
    locate exons and coding regions, transcribe the DNA sequence to RNA sequence (basically
    discard introns, and complement if on reverse strand). The complete mRNA sequence
    will be printed regardless of the bounaries of specified regions. If one or more
    names (refGene.name) are specified, only specified genes will be translated.'
  type: boolean
  inputBinding:
    prefix: --transcribe
- id: t_tou
  doc: Print U for T for RNA sequence. Otherwise use T.
  type: boolean
  inputBinding:
    prefix: --TtoU
- id: translate
  doc: '[GENE [GENE ...]] Translate DNA sequence into protein sequence. variant tools
    will look in the refGene database, find all genes that overlap with the region,
    locate exons and coding regions, transcribe and translate the DNA sequence to
    protein sequence. The complete protein sequence will be printed regardless of
    the boundaries of specified regions. If one or more names (refGene.name) are specified,
    only specified genes will be translated.'
  type: boolean
  inputBinding:
    prefix: --translate
- id: mark
  doc: '[MARK [MARK ...]] Mark a location (--mark chr pos), a variant (--mark chr
    pos ref alt), a region (e.g. refGene_exon.name:NM_000947), or a particular sequence
    (e.g. TCGGA) in red in the output. If a variant is specified, the changed nucleotide
    or amino acid will be printed. Currently only single nucleotide polymorphisms
    are supported.'
  type: boolean
  inputBinding:
    prefix: --mark
- id: mark_complement
  doc: If set, also try to mark the complement of the specified sequence
  type: boolean
  inputBinding:
    prefix: --mark_complement
- id: mark_reverse
  doc: If set, also try to mark the reverse sequence of the specified sequence. If
    both mark_complemnt and mark_reverse are set, four different sequences will be
    searched.
  type: boolean
  inputBinding:
    prefix: --mark_reverse
- id: first_transcript
  doc: If set, only display the first transcript of RNA or Protein sequence
  type: boolean
  inputBinding:
    prefix: --first_transcript
- id: show_transcript
  doc: Put transcript name before transcript
  type: boolean
  inputBinding:
    prefix: --show_transcript
- id: marked_region
  doc: '[MARKED_REGION [MARKED_REGION ...]], --marked-region [MARKED_REGION [MARKED_REGION
    ...]] If set to a number or pair of number, print only n bp to the left and m
    (m=n if only one number is specified) of the marked region. The sequence itself
    is no longer marked. This option is not yet supported in all combinations of options.'
  type: boolean
  inputBinding:
    prefix: --marked_region
- id: hide_unmatched
  doc: If set, only display regions with marked variants or sequences
  type: boolean
  inputBinding:
    prefix: --hide_unmatched
- id: zero_based
  doc: If set, user input is zero based and will be translated to 1-based coordinates
    before query. The output is always 1-based
  type: boolean
  inputBinding:
    prefix: --zero_based
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- sequence
