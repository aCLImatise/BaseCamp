class: CommandLineTool
id: ../../../rnftools_sam2rnf.cwl
inputs:
- id: sam
  doc: Input SAM/BAM with true (expected) alignments of the reads (- for standard
    input).
  type: File
  inputBinding:
    prefix: --sam
- id: rnf_fast_q
  doc: Output FASTQ file (- for standard output).
  type: File
  inputBinding:
    prefix: --rnf-fastq
- id: fa_idx
  doc: FAI index of the reference FASTA file (- for standard input). It can be created
    using 'samtools faidx'.
  type: File
  inputBinding:
    prefix: --faidx
- id: genome_id
  doc: 'Genome ID in RNF (default: 1).'
  type: long
  inputBinding:
    prefix: --genome-id
- id: allow_unmapped
  doc: Allow unmapped reads.
  type: boolean
  inputBinding:
    prefix: --allow-unmapped
outputs: []
cwlVersion: v1.1
baseCommand:
- rnftools
- sam2rnf
