class: CommandLineTool
id: bwameth.py.cwl
inputs:
- id: fast_qs
  doc: bs-seq fastqs to align. Runmultiple sets separated by commas, e.g. ... a_R1.fastq,b_R1.fastq
    a_R2.fastq,b_R2.fastq note that the order must be maintained.
  type: string
  inputBinding:
    position: 0
- id: read_group
  doc: "read-group to add to bam in same format as to bwa: '@RG\\tID:foo\\tSM:bar'"
  type: string
  inputBinding:
    prefix: --read-group
- id: set_as_failed
  doc: flag alignments to this strand as not passing QC (0x200). Targetted BS-Seq
    libraries are often to a single strand, so we can flag them as QC failures. Note
    f == OT, r == OB. Likely, this will be 'f' as we will expect reads to align to
    the original-bottom (OB) strand and will flag as failed those aligning to the
    forward, or original top (OT).
  type: string
  inputBinding:
    prefix: --set-as-failed
- id: interleaved
  doc: fastq files have 4 lines of read1 followed by 4 lines of read2 (e.g. seqtk
    mergepe output)
  type: boolean
  inputBinding:
    prefix: --interleaved
outputs: []
cwlVersion: v1.1
baseCommand:
- bwameth.py
