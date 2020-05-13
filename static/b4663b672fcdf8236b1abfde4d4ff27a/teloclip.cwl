class: CommandLineTool
id: teloclip.cwl
inputs:
- id: ref_idx
  doc: Path to fai index for reference fasta. Index fasta using `samtools faidx FASTA`
  type: string
  inputBinding:
    prefix: --refIdx
- id: min_clip
  doc: Require clip to extend past ref contig end by at least N bases.
  type: long
  inputBinding:
    prefix: --minClip
- id: max_break
  doc: Tolerate max N unaligned bases at contig ends.
  type: long
  inputBinding:
    prefix: --maxBreak
- id: motifs
  doc: If set keep only reads containing given motif/s from comma delimited list of
    strings. By default also search for reverse complement of motifs. i.e. TTAGGG,TTAAGGG
    will also match CCCTAA,CCCTTAA
  type: string
  inputBinding:
    prefix: --motifs
- id: norev
  doc: If set do NOT search for reverse complement of specified motifs.
  type: boolean
  inputBinding:
    prefix: --noRev
- id: no_poly
  doc: 'If set collapse homopolymer tracks within motifs before searching overhangs.
    i.e. "TTAGGGTTAGGGTTAGGGTTAGGGTTAGGG" -> "TAGTAGTAGTAGTAG". Useful for PacBio
    or ONP long reads homopolymer length errors. Default: Off'
  type: boolean
  inputBinding:
    prefix: --noPoly
- id: match_any
  doc: If set motif match may occur in unclipped region of alignment.
  type: boolean
  inputBinding:
    prefix: --matchAny
outputs: []
cwlVersion: v1.1
baseCommand:
- teloclip
