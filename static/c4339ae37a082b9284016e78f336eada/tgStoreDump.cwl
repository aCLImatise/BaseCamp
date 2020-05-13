class: CommandLineTool
id: tgStoreDump.cwl
inputs:
- id: v
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: opts
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: s
  doc: path to the sequence store
  type: string
  inputBinding:
    prefix: -S
- id: t
  doc: <v>       path to the tigStore, version, to use
  type: string
  inputBinding:
    prefix: -T
- id: tig
  doc: '[-B]              only dump tigs between ids A and B'
  type: string
  inputBinding:
    prefix: -tig
- id: unassembled
  doc: only dump tigs that are 'unassembled'
  type: boolean
  inputBinding:
    prefix: -unassembled
- id: contigs
  doc: only dump tigs that are 'contigs'
  type: boolean
  inputBinding:
    prefix: -contigs
- id: repeats
  doc: only dump tigs that are (probably) repeats
  type: boolean
  inputBinding:
    prefix: -repeats
- id: bubbles
  doc: only dump tigs that are (probably) bubbles
  type: boolean
  inputBinding:
    prefix: -bubbles
- id: circular
  doc: only dump tigs that are (probably) circular
  type: boolean
  inputBinding:
    prefix: -circular
- id: n_reads
  doc: max         only dump tigs with between min and max reads
  type: long
  inputBinding:
    prefix: -nreads
- id: length
  doc: max         only dump tigs with length between 'min' and 'max' bases
  type: long
  inputBinding:
    prefix: -length
- id: coverage
  doc: 'C g G       only dump tigs with between fraction g and G at coverage between
    c and C example:  -coverage 10 inf 0.5 1.0 would report tigs where half of the
    bases are at 10+ times coverage.'
  type: string
  inputBinding:
    prefix: -coverage
- id: status
  doc: the number of tigs in the store
  type: boolean
  inputBinding:
    prefix: -status
- id: tig_s
  doc: a list of tigs, and some information about them
  type: boolean
  inputBinding:
    prefix: -tigs
- id: consensus
  doc: '[opts]       the consensus sequence, with options: -reverse          reverse
    complement the sequence -fasta            report sequences in FASTA format (the
    default) -fastq            report sequences in FASTQ format'
  type: boolean
  inputBinding:
    prefix: -consensus
- id: layout
  doc: 'metadata and read-to-tig position mapping.  -o is mandatory. creates two files:
    name.layout.readToTig - read to tig position name.layout.tigInfo   - metadata
    for each tig'
  type: string
  inputBinding:
    prefix: -layout
- id: layout
  doc: '[opts]          the layout of reads in each tig and the consensus sequence
    if available and enabled with option: -sequence         also include consensus
    sequence and quality'
  type: boolean
  inputBinding:
    prefix: -layout
- id: multi_align
  doc: '[opts]      the full multialignment, output is to stdout -w width          width
    of the page -s spacing        spacing between reads on the same line'
  type: boolean
  inputBinding:
    prefix: -multialign
- id: sizes
  doc: '[opts]           size statistics -s genomesize     denominator to use for
    n50 computation'
  type: boolean
  inputBinding:
    prefix: -sizes
- id: coverage
  doc: "[opts]        read coverage plots, one plot per tig -o outputPrefix   write\
    \ plots to 'outputPrefix.*' in the current directory"
  type: boolean
  inputBinding:
    prefix: -coverage
- id: depth
  doc: '[opts]           a histogram of depths -single           one histogram per
    tig'
  type: boolean
  inputBinding:
    prefix: -depth
- id: overlap
  doc: read overlaps -thin overlap     report regions where the (thickest) read overlap
    is less than 'overlap' bases
  type: boolean
  inputBinding:
    prefix: -overlap
- id: overlap_histogram
  doc: a histogram of the thickest overlaps used -o outputPrefix   write plots to
    'outputPrefix.*' in the current directory
  type: boolean
  inputBinding:
    prefix: -overlaphistogram
outputs: []
cwlVersion: v1.1
baseCommand:
- tgStoreDump
