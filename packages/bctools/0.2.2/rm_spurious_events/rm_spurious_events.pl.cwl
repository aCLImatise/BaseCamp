class: CommandLineTool
id: rm_spurious_events.pl.cwl
inputs:
- id: in_filter_alignments_supported
  doc: filter out alignments supported by less reads than this fraction of the maximum
    number of reads per position
  type: boolean?
  inputBinding:
    prefix: --frac_max
- id: in_enable_debug_output
  doc: enable debug output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_man
  doc: full documentation
  type: boolean?
  inputBinding:
    prefix: --man
- id: in_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_4
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_brief
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_crosslinking
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_enable
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_filter
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_9
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_full
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_score
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_13
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_entries
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_help
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_are
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_sharing
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_squashed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_assumed
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_sites
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_start
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_supported
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_after
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_determined
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_pcr
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_stop
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_coordinates
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_duplicate
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_sorted
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_alignments
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_by
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_removal_dot
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_than
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_chr
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_having
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_var_45
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_fraction
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_less
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_maximum
  doc: ''
  type: string
  inputBinding:
    position: 12
- id: in_per
  doc: ''
  type: string
  inputBinding:
    position: 16
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rm_spurious_events.pl
