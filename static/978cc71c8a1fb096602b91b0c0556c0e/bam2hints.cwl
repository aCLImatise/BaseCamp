class: CommandLineTool
id: bam2hints.cwl
inputs:
- id: priority
  doc: -p   priority of hint group (set to 4)
  type: string
  inputBinding:
    prefix: --priority
- id: max_gap_len
  doc: -g   gaps at most this length are simply closed (set to 14)
  type: string
  inputBinding:
    prefix: --maxgaplen
- id: min_intron_len
  doc: -m   alignments with gaps shorter than this and longer than maxgaplen are discarded
    (set to 32)
  type: string
  inputBinding:
    prefix: --minintronlen
- id: max_intron_len
  doc: -M   alignments with longer gaps are discarded (set to 350000)
  type: string
  inputBinding:
    prefix: --maxintronlen
- id: min_end_block_len
  doc: minimum length of a 'dangling' exon (set to 8)
  type: string
  inputBinding:
    prefix: --MinEndBlockLen
- id: maxq_gap_len
  doc: -q   maximum length of gap in query (cDNA) sequence (set to 5)
  type: string
  inputBinding:
    prefix: --maxQgaplen
- id: exon_hints
  doc: -x   compute exonpart, exon and splice site hints in addition to intron hints
    (set to 0=Off) You should generate exonpart hints from RNA-Seq using wiggle (.wig)
    input to wig2hints.
  type: boolean
  inputBinding:
    prefix: --exonhints
- id: ep_cut_off
  doc: -e   this many bp are cut off of each exonpart hint at end of alignment (set
    to 10)
  type: string
  inputBinding:
    prefix: --ep_cutoff
- id: source
  doc: -s   source identifier (set to 'E')
  type: string
  inputBinding:
    prefix: --source
- id: introns_only
  doc: -I   only retrieve intron hints (e.g. because the exon(part) hints are retrieved
    by converting to a wig track, set to 1=On) deprecated as this is the default now
  type: boolean
  inputBinding:
    prefix: --intronsonly
- id: no_mult
  doc: -n   do not summarize multiple identical intron hints to a single one (set
    to 0=Off)
  type: boolean
  inputBinding:
    prefix: --nomult
- id: remove_redundant
  doc: only keep the strongest hint for a region (set to 0=Off)
  type: boolean
  inputBinding:
    prefix: --remove_redundant
- id: max_coverage
  doc: '-C   maximal number of hints at a given position (0: filtering deactivated).
    A high value causes long running time of AUGUSTUS in regions with thousands of
    cDNA alignments. (set to 0)'
  type: string
  inputBinding:
    prefix: --maxcoverage
- id: ss_on
  doc: -S   include splice site (dss, ass) hints in output (set to 0=Off)
  type: boolean
  inputBinding:
    prefix: --ssOn
- id: trunks_s
  doc: -T   include splice sites hints from the ends of a truncated alignment (contig
    too short, set to 0=Off)
  type: boolean
  inputBinding:
    prefix: --trunkSS
- id: score
  doc: -s   fill this number in in the score column (set to 0)
  type: string
  inputBinding:
    prefix: --score
- id: max_gene_len
  doc: -G   alignments of the same clone are considered to be of the same gene if
    not separated by more than this (set to 400000) Alignments that span more than
    this are ignored, but better filter long introns through an alignment program.
  type: string
  inputBinding:
    prefix: --maxgenelen
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2hints
