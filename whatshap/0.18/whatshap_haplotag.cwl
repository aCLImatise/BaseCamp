class: CommandLineTool
id: ../../../whatshap_haplotag.cwl
inputs:
- id: output
  doc: Output file. If omitted, use standard output.
  type: string
  inputBinding:
    prefix: --output
- id: reference
  doc: Reference file. Provide this to detect alleles through re-alignment. If no
    index (.fai) exists, it will be created
  type: string
  inputBinding:
    prefix: --reference
- id: ignore_linked_read
  doc: Ignore linkage information stored in BX tags of the reads.
  type: boolean
  inputBinding:
    prefix: --ignore-linked-read
- id: linked_read_distance_cut_off
  doc: 'Assume reads with identical BX tags belong to different read clouds if their
    distance is larger than LINKEDREADDISTANCE (default: 50000).'
  type: string
  inputBinding:
    prefix: --linked-read-distance-cutoff
- id: ignore_read_groups
  doc: Ignore read groups in BAM/CRAM header and assume all reads come from the same
    sample.
  type: boolean
  inputBinding:
    prefix: --ignore-read-groups
- id: sample
  doc: Name of a sample to phase. If not given, all samples in the input VCF are phased.
    Can be used multiple times.
  type: string
  inputBinding:
    prefix: --sample
- id: vcf
  doc: VCF file with phased variants (must be gzip-compressed and indexed)
  type: string
  inputBinding:
    position: 0
- id: alignments
  doc: File (BAM/CRAM) with read alignments to be tagged by haplotype
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- whatshap
- haplotag
