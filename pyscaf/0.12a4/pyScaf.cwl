#!/usr/bin/env cwl-runner

baseCommand:
- pyScaf
class: CommandLineTool
cwlVersion: v1.0
id: pyscaf
inputs:
- doc: assembly FASTA file
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
- doc: output stream [scaffolds.fa]
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: max no. of threads to run [4]
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: output log to [stderr]
  id: log
  inputBinding:
    prefix: --log
  type: string
- doc: '{,png,gif,pdf} generate dotplot as [png]'
  id: dotplot
  inputBinding:
    prefix: --dotplot
  type: boolean
- doc: reference FastA file
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: min. identity [0.33]
  id: identity
  inputBinding:
    prefix: --identity
  type: string
- doc: min. overlap  [0.66]
  id: overlap
  inputBinding:
    prefix: --overlap
  type: string
- doc: max. distance between adjacent contigs [0.01 * assembly_size]
  id: max_gap
  inputBinding:
    prefix: --maxgap
  type: long
- doc: high identity mode (rearrangements not allowed)
  id: no_rearrangements
  inputBinding:
    prefix: --norearrangements
  type: boolean
- doc: FastQ/FastA file(s) with PacBio/ONT reads
  id: long_reads
  inputBinding:
    prefix: --longreads
  type:
    items: string
    type: array
- doc: FASTQ PE/MP files
  id: fast_q
  inputBinding:
    prefix: --fastq
  type:
    items: string
    type: array
- doc: min pairs to join contigs [5]
  id: joins
  inputBinding:
    prefix: --joins
  type: string
- doc: max link ratio between two best contig pairs [0.7]
  id: link_ratio
  inputBinding:
    prefix: --linkratio
  type: string
- doc: align subset of reads [0.2]
  id: load
  inputBinding:
    prefix: --load
  type: string
- doc: min mapping quality [10]
  id: mapq
  inputBinding:
    prefix: --mapq
  type: string
