class: CommandLineTool
id: vtools_report_sequence.cwl
inputs:
- id: in_build
  doc: "[BUILD]       Output sequence at specified build of reference\ngenome. The\
    \ primary reference genome of the project\nwill be used if by default."
  type: boolean?
  inputBinding:
    prefix: --build
- id: in_numbered
  doc: "[{left,right}]\nIf specified, add position of the first or last\nbasepair\
    \ of each line to the left or right of the\nline, and insert a space at every\
    \ 10 basepair"
  type: boolean?
  inputBinding:
    prefix: --numbered
- id: in_char_per_line
  doc: "Number of characters (excluding space and leading\nnumbers) per line. Default\
    \ to 70 in regular and 60 in\nnumbered format."
  type: long?
  inputBinding:
    prefix: --char_per_line
- id: in_transcribe
  doc: "[GENE [GENE ...]]\nTranscribe DNA sequence into RNA sequence. variant\ntools\
    \ will look in the refGene database, find all\ngenes that overlap with the region,\
    \ locate exons and\ncoding regions, transcribe the DNA sequence to RNA\nsequence\
    \ (basically discard introns, and complement if\non reverse strand). The complete\
    \ mRNA sequence will be\nprinted regardless of the bounaries of specified\nregions.\
    \ If one or more names (refGene.name) are\nspecified, only specified genes will\
    \ be translated."
  type: boolean?
  inputBinding:
    prefix: --transcribe
- id: in_t_tou
  doc: Print U for T for RNA sequence. Otherwise use T.
  type: boolean?
  inputBinding:
    prefix: --TtoU
- id: in_translate
  doc: "[GENE [GENE ...]]\nTranslate DNA sequence into protein sequence. variant\n\
    tools will look in the refGene database, find all\ngenes that overlap with the\
    \ region, locate exons and\ncoding regions, transcribe and translate the DNA\n\
    sequence to protein sequence. The complete protein\nsequence will be printed regardless\
    \ of the boundaries\nof specified regions. If one or more names\n(refGene.name)\
    \ are specified, only specified genes\nwill be translated."
  type: boolean?
  inputBinding:
    prefix: --translate
- id: in_mark
  doc: "[MARK [MARK ...]]\nMark a location (--mark chr pos), a variant (--mark\nchr\
    \ pos ref alt), a region (e.g.\nrefGene_exon.name:NM_000947), or a particular\
    \ sequence\n(e.g. TCGGA) in red in the output. If a variant is\nspecified, the\
    \ changed nucleotide or amino acid will\nbe printed. Currently only single nucleotide\n\
    polymorphisms are supported."
  type: boolean?
  inputBinding:
    prefix: --mark
- id: in_mark_complement
  doc: "If set, also try to mark the complement of the\nspecified sequence"
  type: boolean?
  inputBinding:
    prefix: --mark_complement
- id: in_mark_reverse
  doc: "If set, also try to mark the reverse sequence of the\nspecified sequence.\
    \ If both mark_complemnt and\nmark_reverse are set, four different sequences will\
    \ be\nsearched."
  type: boolean?
  inputBinding:
    prefix: --mark_reverse
- id: in_first_transcript
  doc: "If set, only display the first transcript of RNA or\nProtein sequence"
  type: boolean?
  inputBinding:
    prefix: --first_transcript
- id: in_show_transcript
  doc: Put transcript name before transcript
  type: boolean?
  inputBinding:
    prefix: --show_transcript
- id: in_marked_region
  doc: "[MARKED_REGION [MARKED_REGION ...]], --marked-region [MARKED_REGION [MARKED_REGION\
    \ ...]]\nIf set to a number or pair of number, print only n bp\nto the left and\
    \ m (m=n if only one number is\nspecified) of the marked region. The sequence\
    \ itself\nis no longer marked. This option is not yet supported\nin all combinations\
    \ of options."
  type: boolean?
  inputBinding:
    prefix: --marked_region
- id: in_hide_unmatched
  doc: "If set, only display regions with marked variants or\nsequences"
  type: boolean?
  inputBinding:
    prefix: --hide_unmatched
- id: in_zero_based
  doc: "If set, user input is zero based and will be\ntranslated to 1-based coordinates\
    \ before query. The\noutput is always 1-based"
  type: boolean?
  inputBinding:
    prefix: --zero_based
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_regions
  doc: "One or more chromosome regions in the format of\nchr:start-end (e.g. chr21:33,031,597-33,041,570),\n\
    Field:Value from a region-based annotation database\n(e.g. refGene.name2:TRIM2\
    \ or\nrefGene_exon.name:NM_000947), or set options of\nseveral regions (&, |,\
    \ -, and ^ for intersection,\nunion, difference, and symmetric difference). Several\n\
    regions will be printed if the name matches more than\none regions. Chromosome\
    \ positions are 1-based and are\ninclusive at both ends so the chromosome region\
    \ has a\nlength of end-start+1 bp. A reversed complementary\nsequence will be\
    \ outputted if starting position is\nafter the ending position."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- sequence
