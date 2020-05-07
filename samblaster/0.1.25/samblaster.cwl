class: CommandLineTool
id: samblaster.cwl
inputs:
- id: add_mate_tags
  doc: Add MC and MQ tags to all output paired-end SAM lines.
  type: boolean
  inputBinding:
    prefix: --addMateTags
- id: ignore_un_mated
  doc: Suppress abort on unmated alignments. Use only when sure input is read-id grouped,
    and either paired-end alignments have been filtered or the input file contains
    singleton reads.
  type: boolean
  inputBinding:
    prefix: --ignoreUnmated
- id: max_read_length
  doc: INT Maximum allowed length of the SEQ/QUAL string in the input file. [500]
    Primarily useful for marking duplicates in files containing singleton long reads.
  type: boolean
  inputBinding:
    prefix: --maxReadLength
- id: max_split_count
  doc: INT Maximum number of split alignments for a read to be included in splitter
    file. [2]
  type: boolean
  inputBinding:
    prefix: --maxSplitCount
- id: max_unmapped_bases
  doc: Maximum number of un-aligned bases between two alignments to be included in
    splitter file. [50]
  type: long
  inputBinding:
    prefix: --maxUnmappedBases
- id: min_in_del_size
  doc: INT Minimum structural variant feature size for split alignments to be included
    in splitter file. [50]
  type: boolean
  inputBinding:
    prefix: --minIndelSize
- id: min_non_overlap
  doc: INT Minimum non-overlaping base pairs between two alignments for a read to
    be included in splitter file. [20]
  type: boolean
  inputBinding:
    prefix: --minNonOverlap
- id: min_clip_size
  doc: INT Minumum number of bases a mapped read must be clipped to be included in
    unmapped file. [20]
  type: boolean
  inputBinding:
    prefix: --minClipSize
outputs: []
cwlVersion: v1.1
baseCommand:
- samblaster
