class: CommandLineTool
id: bam2hints.cwl
inputs:
- id: in_priority
  doc: priority of hint group (set to 4)
  type: long?
  inputBinding:
    prefix: --priority
- id: in_max_gap_len
  doc: gaps at most this length are simply closed (set to 14)
  type: long?
  inputBinding:
    prefix: --maxgaplen
- id: in_min_intron_len
  doc: alignments with gaps shorter than this and longer than maxgaplen are discarded
    (set to 32)
  type: long?
  inputBinding:
    prefix: --minintronlen
- id: in_max_intron_len
  doc: alignments with longer gaps are discarded (set to 350000)
  type: long?
  inputBinding:
    prefix: --maxintronlen
- id: in_min_end_block_len
  doc: minimum length of a 'dangling' exon (set to 8)
  type: long?
  inputBinding:
    prefix: --MinEndBlockLen
- id: in_maxq_gap_len
  doc: maximum length of gap in query (cDNA) sequence (set to 5)
  type: long?
  inputBinding:
    prefix: --maxQgaplen
- id: in_exon_hints
  doc: "compute exonpart, exon and splice site hints in addition to intron hints (set\
    \ to 0=Off)\nYou should generate exonpart hints from RNA-Seq using wiggle (.wig)\
    \ input to wig2hints."
  type: boolean?
  inputBinding:
    prefix: --exonhints
- id: in_ep_cut_off
  doc: this many bp are cut off of each exonpart hint at end of alignment (set to
    10)
  type: long?
  inputBinding:
    prefix: --ep_cutoff
- id: in_source
  doc: source identifier (set to 'E')
  type: string?
  inputBinding:
    prefix: --source
- id: in_introns_only
  doc: "only retrieve intron hints (e.g. because the exon(part) hints are retrieved\
    \ by converting to a wig track, set to 1=On)\ndeprecated as this is the default\
    \ now"
  type: boolean?
  inputBinding:
    prefix: --intronsonly
- id: in_no_mult
  doc: do not summarize multiple identical intron hints to a single one (set to 0=Off)
  type: boolean?
  inputBinding:
    prefix: --nomult
- id: in_remove_redundant
  doc: only keep the strongest hint for a region (set to 0=Off)
  type: boolean?
  inputBinding:
    prefix: --remove_redundant
- id: in_max_coverage
  doc: "maximal number of hints at a given position (0: filtering deactivated). A\
    \ high value causes long running time of\nAUGUSTUS in regions with thousands of\
    \ cDNA alignments. (set to 0)"
  type: long?
  inputBinding:
    prefix: --maxcoverage
- id: in_ss_on
  doc: include splice site (dss, ass) hints in output (set to 0=Off)
  type: boolean?
  inputBinding:
    prefix: --ssOn
- id: in_trunks_s
  doc: include splice sites hints from the ends of a truncated alignment (contig too
    short, set to 0=Off)
  type: boolean?
  inputBinding:
    prefix: --trunkSS
- id: in_score
  doc: fill this number in in the score column (set to 0)
  type: long?
  inputBinding:
    prefix: --score
- id: in_max_gene_len
  doc: "alignments of the same clone are considered to be of the same gene if not\
    \ separated by more than this (set to 400000)\nAlignments that span more than\
    \ this are ignored, but better filter long introns through an alignment program."
  type: long?
  inputBinding:
    prefix: --maxgenelen
- id: in_out
  doc: ''
  type: string?
  inputBinding:
    prefix: --out
- id: in_in
  doc: ''
  type: string?
  inputBinding:
    prefix: --in
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bam2hints
