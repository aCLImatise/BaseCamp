class: CommandLineTool
id: tgStoreDump.cwl
inputs:
- id: in_path_sequence_store
  doc: path to the sequence store
  type: File?
  inputBinding:
    prefix: -S
- id: in_path_tigstore_version
  doc: <v>       path to the tigStore, version, to use
  type: File?
  inputBinding:
    prefix: -T
- id: in_tig
  doc: '[-B]              only dump tigs between ids A and B'
  type: string?
  inputBinding:
    prefix: -tig
- id: in_unassembled
  doc: only dump tigs that are 'unassembled'
  type: boolean?
  inputBinding:
    prefix: -unassembled
- id: in_contigs
  doc: only dump tigs that are 'contigs'
  type: boolean?
  inputBinding:
    prefix: -contigs
- id: in_repeats
  doc: only dump tigs that are (probably) repeats
  type: boolean?
  inputBinding:
    prefix: -repeats
- id: in_bubbles
  doc: only dump tigs that are (probably) bubbles
  type: boolean?
  inputBinding:
    prefix: -bubbles
- id: in_circular
  doc: only dump tigs that are (probably) circular
  type: boolean?
  inputBinding:
    prefix: -circular
- id: in_n_reads
  doc: max         only dump tigs with between min and max reads
  type: long?
  inputBinding:
    prefix: -nreads
- id: in_length
  doc: max         only dump tigs with length between 'min' and 'max' bases
  type: long?
  inputBinding:
    prefix: -length
- id: in_coverage
  doc: "C g G       only dump tigs with between fraction g and G at coverage between\
    \ c and C\nexample:  -coverage 10 inf 0.5 1.0 would report tigs where half of\
    \ the\nbases are at 10+ times coverage."
  type: double?
  inputBinding:
    prefix: -coverage
- id: in_status
  doc: the number of tigs in the store
  type: boolean?
  inputBinding:
    prefix: -status
- id: in_tig_s
  doc: a list of tigs, and some information about them
  type: boolean?
  inputBinding:
    prefix: -tigs
- id: in_consensus
  doc: '[opts]       the consensus sequence, with options:'
  type: boolean?
  inputBinding:
    prefix: -consensus
- id: in_reverse
  doc: reverse complement the sequence
  type: boolean?
  inputBinding:
    prefix: -reverse
- id: in_fast_a
  doc: report sequences in FASTA format (the default)
  type: boolean?
  inputBinding:
    prefix: -fasta
- id: in_fast_q
  doc: report sequences in FASTQ format
  type: boolean?
  inputBinding:
    prefix: -fastq
- id: in_multi_align
  doc: '[opts]      the full multialignment, output is to stdout'
  type: boolean?
  inputBinding:
    prefix: -multialign
- id: in_width_of_page
  doc: width of the page
  type: string?
  inputBinding:
    prefix: -w
- id: in_spacing_reads_same
  doc: spacing between reads on the same line
  type: string?
  inputBinding:
    prefix: -s
- id: in_sizes
  doc: '[opts]           size statistics'
  type: boolean?
  inputBinding:
    prefix: -sizes
- id: in_write_plots_current
  doc: write plots to 'outputPrefix.*' in the current directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_depth
  doc: '[opts]           a histogram of depths'
  type: boolean?
  inputBinding:
    prefix: -depth
- id: in_single
  doc: one histogram per tig
  type: boolean?
  inputBinding:
    prefix: -single
- id: in_overlap
  doc: read overlaps
  type: boolean?
  inputBinding:
    prefix: -overlap
- id: in_thin
  doc: report regions where the (thickest) read overlap is less than 'overlap' bases
  type: string?
  inputBinding:
    prefix: -thin
- id: in_overlap_histogram
  doc: a histogram of the thickest overlaps used
  type: boolean?
  inputBinding:
    prefix: -overlaphistogram
- id: in_v
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_opts
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tgStoreDump
