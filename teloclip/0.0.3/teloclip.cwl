#!/usr/bin/env cwl-runner

baseCommand:
- teloclip
class: CommandLineTool
cwlVersion: v1.0
id: teloclip
inputs:
- doc: Path to fai index for reference fasta. Index fasta using `samtools faidx FASTA`
  id: ref_idx
  inputBinding:
    prefix: --refIdx
  type: string
- doc: Require clip to extend past ref contig end by at least N bases.
  id: min_clip
  inputBinding:
    prefix: --minClip
  type: long
- doc: Tolerate max N unaligned bases at contig ends.
  id: max_break
  inputBinding:
    prefix: --maxBreak
  type: long
- doc: If set keep only reads containing given motif/s from comma delimited list of
    strings. By default also search for reverse complement of motifs. i.e. TTAGGG,TTAAGGG
    will also match CCCTAA,CCCTTAA
  id: motifs
  inputBinding:
    prefix: --motifs
  type: string
- doc: If set do NOT search for reverse complement of specified motifs.
  id: norev
  inputBinding:
    prefix: --noRev
  type: boolean
- doc: 'If set collapse homopolymer tracks within motifs before searching overhangs.
    i.e. "TTAGGGTTAGGGTTAGGGTTAGGGTTAGGG" -> "TAGTAGTAGTAGTAG". Useful for PacBio
    or ONP long reads homopolymer length errors. Default: Off'
  id: no_poly
  inputBinding:
    prefix: --noPoly
  type: boolean
- doc: If set motif match may occur in unclipped region of alignment.
  id: match_any
  inputBinding:
    prefix: --matchAny
  type: boolean
