class: CommandLineTool
id: blat2hints.pl.cwl
inputs:
- id: in_priority
  doc: priority of hint group (default 4)
  type: long?
  inputBinding:
    prefix: --priority
- id: in_max_gap_len
  doc: gaps at most this length are simply closed (default 14)
  type: long?
  inputBinding:
    prefix: --maxgaplen
- id: in_min_intron_len
  doc: alignments with gaps shorter than this and longer than maxgaplen are discarded
    (default 41)
  type: long?
  inputBinding:
    prefix: --minintronlen
- id: in_max_intron_len
  doc: alignments with longer gaps are discarded (default 350000)
  type: long?
  inputBinding:
    prefix: --maxintronlen
- id: in_maxq_gap_len
  doc: maximum length of gap in query (cDNA) sequence (default 5)
  type: long?
  inputBinding:
    prefix: --maxQgaplen
- id: in_ep_cut_off
  doc: this many bp are cut off of each exonpart hint at end of alignment (default
    10)
  type: long?
  inputBinding:
    prefix: --ep_cutoff
- id: in_source
  doc: source identifier (default 'E')
  type: string?
  inputBinding:
    prefix: --source
- id: in_introns_only
  doc: 'only retrieve intron hints (e.g. because the exon(part) hints are retrieved
    by converting to a wig track, default: off)'
  type: boolean?
  inputBinding:
    prefix: --intronsonly
- id: in_no_mult
  doc: do not summarize multiple identical intron hints to a single one
  type: boolean?
  inputBinding:
    prefix: --nomult
- id: in_remove_redundant
  doc: keep the strongest hint for a region (default false)
  type: string?
  inputBinding:
    prefix: --remove_redundant
- id: in_max_coverage
  doc: "maximal number of hints at a given position. A high value causes long running\
    \ time of\nAUGUSTUS in regions with thousands of cDNA alignments. (default 3000)"
  type: long?
  inputBinding:
    prefix: --maxcoverage
- id: in_ss_on
  doc: include splice site (dss, ass) hints in output (default false)
  type: boolean?
  inputBinding:
    prefix: --ssOn
- id: in_trunks_s
  doc: include splice sites hints from the ends of a truncated alignment (contig too
    short)
  type: boolean?
  inputBinding:
    prefix: --trunkSS
- id: in_col_offset
  doc: column offset, 0 for direct blat output, 1 for psl format from UCSC database
    (default 0)
  type: long?
  inputBinding:
    prefix: --coloffset
- id: in_score
  doc: fill this number in in the score column (default 0)
  type: long?
  inputBinding:
    prefix: --score
- id: in_clone_file
  doc: "provide a file with clone names so close alignments from the same clone can\
    \ be grouped.\nAUGUSTUS will try to put those hints into a single transcripts\
    \ even if different ends of\nthe clones were sequenced. File format (tab delimited):\n\
    cloneA     read1   read2\ncloneA     read3\ncloneB     read4   read5"
  type: File?
  inputBinding:
    prefix: --clonefile
- id: in_terminus_file
  doc: "provide a file with EST terminus information to infer tss/tts hints.\nAUGUSTUS\
    \ will use tss/tts hints to predict transcription start/termination sites\nFile\
    \ format (tab delimited):\n# ESTname    EstDir    Type FrontTerminus  EndTerminus\n\
    CACW5781.b1     5       A2      5TSS       Unknown\nCACW6759.g1     3       F23\
    \     5TNS       3TNS\nCACW14459.g2    3       D2      Unknown    3TNS\nCACW21662.g1\
    \    3       C2      5TNS       Unknown\nCACW25491.g1    3       F21     5TNS\
    \       3TNS-NP\ncloneB     read4   read5"
  type: File?
  inputBinding:
    prefix: --terminusfile
- id: in_max_gene_len
  doc: "alignments of the same clone are considered to be of the same gene if not\
    \ separated by more than this (400000)\nAlignments that span more than this are\
    \ ignored, but better filter long introns through alignment program.\n"
  type: long?
  inputBinding:
    prefix: --maxgenelen
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- blat2hints.pl
