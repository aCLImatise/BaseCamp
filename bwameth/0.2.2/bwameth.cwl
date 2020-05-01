#!/usr/bin/env cwl-runner

baseCommand:
- bwameth.py
class: CommandLineTool
cwlVersion: v1.0
id: bwameth.py
inputs:
- doc: bs-seq fastqs to align. Runmultiple sets separated by commas, e.g. ... a_R1.fastq,b_R1.fastq
    a_R2.fastq,b_R2.fastq note that the order must be maintained.
  id: fast_qs
  inputBinding:
    position: 0
  type: string
- doc: "read-group to add to bam in same format as to bwa: '@RG\\tID:foo\\tSM:bar'"
  id: read_group
  inputBinding:
    prefix: --read-group
  type: string
- doc: flag alignments to this strand as not passing QC (0x200). Targetted BS-Seq
    libraries are often to a single strand, so we can flag them as QC failures. Note
    f == OT, r == OB. Likely, this will be 'f' as we will expect reads to align to
    the original-bottom (OB) strand and will flag as failed those aligning to the
    forward, or original top (OT).
  id: set_as_failed
  inputBinding:
    prefix: --set-as-failed
  type: string
- doc: fastq files have 4 lines of read1 followed by 4 lines of read2 (e.g. seqtk
    mergepe output)
  id: interleaved
  inputBinding:
    prefix: --interleaved
  type: boolean
