class: CommandLineTool
id: blat2hints.pl.cwl
inputs:
- id: priority
  doc: priority of hint group (default 4)
  type: string
  inputBinding:
    prefix: --priority
- id: max_gap_len
  doc: gaps at most this length are simply closed (default 14)
  type: string
  inputBinding:
    prefix: --maxgaplen
- id: min_intron_len
  doc: alignments with gaps shorter than this and longer than maxgaplen are discarded
    (default 41)
  type: string
  inputBinding:
    prefix: --minintronlen
- id: max_intron_len
  doc: alignments with longer gaps are discarded (default 350000)
  type: string
  inputBinding:
    prefix: --maxintronlen
- id: maxq_gap_len
  doc: maximum length of gap in query (cDNA) sequence (default 5)
  type: string
  inputBinding:
    prefix: --maxQgaplen
- id: ep_cut_off
  doc: this many bp are cut off of each exonpart hint at end of alignment (default
    10)
  type: string
  inputBinding:
    prefix: --ep_cutoff
- id: source
  doc: source identifier (default 'E')
  type: string
  inputBinding:
    prefix: --source
- id: introns_only
  doc: 'only retrieve intron hints (e.g. because the exon(part) hints are retrieved
    by converting to a wig track, default: off)'
  type: boolean
  inputBinding:
    prefix: --intronsonly
- id: no_mult
  doc: do not summarize multiple identical intron hints to a single one
  type: boolean
  inputBinding:
    prefix: --nomult
- id: remove_redundant
  doc: keep the strongest hint for a region (default false)
  type: string
  inputBinding:
    prefix: --remove_redundant
- id: max_coverage
  doc: maximal number of hints at a given position. A high value causes long running
    time of AUGUSTUS in regions with thousands of cDNA alignments. (default 3000)
  type: string
  inputBinding:
    prefix: --maxcoverage
- id: ss_on
  doc: include splice site (dss, ass) hints in output (default false)
  type: boolean
  inputBinding:
    prefix: --ssOn
- id: trunks_s
  doc: include splice sites hints from the ends of a truncated alignment (contig too
    short)
  type: boolean
  inputBinding:
    prefix: --trunkSS
- id: col_offset
  doc: column offset, 0 for direct blat output, 1 for psl format from UCSC database
    (default 0)
  type: string
  inputBinding:
    prefix: --coloffset
- id: score
  doc: fill this number in in the score column (default 0)
  type: string
  inputBinding:
    prefix: --score
- id: clone_file
  doc: 'provide a file with clone names so close alignments from the same clone can
    be grouped. AUGUSTUS will try to put those hints into a single transcripts even
    if different ends of the clones were sequenced. File format (tab delimited): cloneA     read1   read2
    cloneA     read3 cloneB     read4   read5'
  type: string
  inputBinding:
    prefix: --clonefile
- id: terminus_file
  doc: 'provide a file with EST terminus information to infer tss/tts hints. AUGUSTUS
    will use tss/tts hints to predict transcription start/termination sites File format
    (tab delimited): # ESTname    EstDir    Type FrontTerminus  EndTerminus CACW5781.b1     5       A2      5TSS       Unknown
    CACW6759.g1     3       F23     5TNS       3TNS CACW14459.g2    3       D2      Unknown    3TNS
    CACW21662.g1    3       C2      5TNS       Unknown CACW25491.g1    3       F21     5TNS       3TNS-NP
    cloneB     read4   read5'
  type: string
  inputBinding:
    prefix: --terminusfile
- id: max_gene_len
  doc: alignments of the same clone are considered to be of the same gene if not separated
    by more than this (400000) Alignments that span more than this are ignored, but
    better filter long introns through alignment program.
  type: string
  inputBinding:
    prefix: --maxgenelen
outputs: []
cwlVersion: v1.1
baseCommand:
- blat2hints.pl
