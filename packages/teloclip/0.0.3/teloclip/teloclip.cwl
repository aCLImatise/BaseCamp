class: CommandLineTool
id: ../../../teloclip.cwl
inputs:
- id: in_ref_idx
  doc: "Path to fai index for reference fasta. Index fasta\nusing `samtools faidx\
    \ FASTA`"
  type: File
  inputBinding:
    prefix: --refIdx
- id: in_min_clip
  doc: "Require clip to extend past ref contig end by at least\nN bases."
  type: long
  inputBinding:
    prefix: --minClip
- id: in_max_break
  doc: Tolerate max N unaligned bases at contig ends.
  type: long
  inputBinding:
    prefix: --maxBreak
- id: in_motifs
  doc: "If set keep only reads containing given motif/s from\ncomma delimited list\
    \ of strings. By default also search\nfor reverse complement of motifs. i.e. TTAGGG,TTAAGGG\n\
    will also match CCCTAA,CCCTTAA"
  type: string
  inputBinding:
    prefix: --motifs
- id: in_norev
  doc: "If set do NOT search for reverse complement of\nspecified motifs."
  type: boolean
  inputBinding:
    prefix: --noRev
- id: in_no_poly
  doc: "If set collapse homopolymer tracks within motifs before\nsearching overhangs.\
    \ i.e.\n\"TTAGGGTTAGGGTTAGGGTTAGGGTTAGGG\" -> \"TAGTAGTAGTAGTAG\".\nUseful for\
    \ PacBio or ONP long reads homopolymer length\nerrors. Default: Off"
  type: boolean
  inputBinding:
    prefix: --noPoly
- id: in_match_any
  doc: If set motif match may occur in unclipped region of
  type: boolean
  inputBinding:
    prefix: --matchAny
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- teloclip
