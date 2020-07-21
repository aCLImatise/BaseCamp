class: CommandLineTool
id: ../../../gffread.cwl
inputs:
- id: discard_transcripts_having
  doc: discard transcripts having an intron larger than <maxintron>
  type: boolean
  inputBinding:
    prefix: -i
- id: discard_transcripts_shorter
  doc: discard transcripts shorter than <minlen> bases
  type: boolean
  inputBinding:
    prefix: -l
- id: only_show_coordinate
  doc: only show transcripts overlapping coordinate range <start>..<end> (on chromosome/contig
    <chr>, strand <strand> if provided)
  type: boolean
  inputBinding:
    prefix: -r
- id: r_option_discard
  doc: for -r option, discard all transcripts that are not fully  contained within
    the given range
  type: boolean
  inputBinding:
    prefix: -R
- id: discard_singleexon_transcripts
  doc: discard single-exon transcripts
  type: boolean
  inputBinding:
    prefix: -U
- id: coding_only_discard
  doc: 'coding only: discard mRNAs that have no CDS features'
  type: boolean
  inputBinding:
    prefix: -C
- id: nc
  doc: 'only: discard mRNAs that have CDS features'
  type: string
  inputBinding:
    prefix: --nc
- id: ignore_locus
  doc: ': discard locus features and attributes found in the input'
  type: boolean
  inputBinding:
    prefix: --ignore-locus
- id: use_description_field
  doc: use the description field from <seq_info.fsize> and add it as the value for
    a 'descr' attribute to the GFF record
  type: boolean
  inputBinding:
    prefix: -A
- id: seqinfofsize_tabdelimited_file
  doc: '<seq_info.fsize> is a tab-delimited file providing this info for each of the
    mapped sequences: <seq-name> <seq-length> <seq-description> (useful for -A option
    with mRNA/EST/protein mappings)'
  type: boolean
  inputBinding:
    prefix: -s
- id: discard_multiexon_mrnas
  doc: discard multi-exon mRNAs that have any intron with a non-canonical splice site
    consensus (i.e. not GT-AG, GC-AG or AT-AC)
  type: boolean
  inputBinding:
    prefix: -N
- id: discard_mrnas_lack
  doc: discard any mRNAs that either lack initial START codon or the terminal STOP
    codon, or have an in-frame stop codon (i.e. only print mRNAs with a complete CDS)
  type: boolean
  inputBinding:
    prefix: -J
- id: no_pseudo
  doc: ": filter out records matching the 'pseudo' keyword"
  type: boolean
  inputBinding:
    prefix: --no-pseudo
- id: in_bed
  doc: ': input should be parsed as BED format (automatic if the input filename ends
    with .bed*)'
  type: boolean
  inputBinding:
    prefix: --in-bed
- id: in_tlf
  doc: ': input GFF-like one-line-per-transcript format without exon/CDS features
    (see --tlf option below); automatic if the input filename ends with .tlf)'
  type: boolean
  inputBinding:
    prefix: --in-tlf
- id: m_option_also
  doc: 'for -M option: also discard as redundant the shorter, fully contained transcripts
    (intron chains matching a part of the container)'
  type: boolean
  inputBinding:
    prefix: -K
- id: m_option_no
  doc: for -M option, no longer require boundary containment when assessing redundancy
    (can be combined with -K); only introns have to match for multi-exon transcripts,
    and >=80% overlap for single-exon transcripts
  type: boolean
  inputBinding:
    prefix: -Q
- id: m_option_enforce
  doc: for -M option, enforce -Q but also discard overlapping single-exon  transcripts,
    even on the opposite strand (can be combined with -K)
  type: boolean
  inputBinding:
    prefix: -Y
- id: input_gff
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gffread
