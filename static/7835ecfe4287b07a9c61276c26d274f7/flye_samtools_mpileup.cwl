class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/flye_samtools_mpileup.cwl
inputs:
- id: illumina_one_dot_three
  doc: +      quality is in the Illumina-1.3+ encoding
  type: boolean
  inputBinding:
    prefix: --illumina1.3
- id: count_orphans
  doc: do not discard anomalous read pairs
  type: boolean
  inputBinding:
    prefix: --count-orphans
- id: bam_list
  doc: list of input BAM filenames, one per line
  type: File
  inputBinding:
    prefix: --bam-list
- id: no_baq
  doc: disable BAQ (per-Base Alignment Quality)
  type: boolean
  inputBinding:
    prefix: --no-BAQ
- id: adjust_mq
  doc: adjust mapping quality; recommended:50, disable:0 [0]
  type: long
  inputBinding:
    prefix: --adjust-MQ
- id: max_depth
  doc: max per-file depth; avoids excessive memory usage [8000]
  type: long
  inputBinding:
    prefix: --max-depth
- id: redo_baq
  doc: recalculate BAQ on the fly, ignore existing BQs
  type: boolean
  inputBinding:
    prefix: --redo-BAQ
- id: fast_a_ref
  doc: faidx indexed reference sequence file
  type: File
  inputBinding:
    prefix: --fasta-ref
- id: exclude_rg
  doc: exclude read groups listed in FILE
  type: File
  inputBinding:
    prefix: --exclude-RG
- id: positions
  doc: skip unlisted positions (chr pos) or regions (BED)
  type: File
  inputBinding:
    prefix: --positions
- id: min_mq
  doc: skip alignments with mapQ smaller than INT [0]
  type: long
  inputBinding:
    prefix: --min-MQ
- id: min_bq
  doc: skip bases with baseQ/BAQ smaller than INT [13]
  type: long
  inputBinding:
    prefix: --min-BQ
- id: region
  doc: region in which pileup is generated
  type: string
  inputBinding:
    prefix: --region
- id: ignore_rg
  doc: ignore RG tags (one BAM = one sample)
  type: boolean
  inputBinding:
    prefix: --ignore-RG
- id: incl_flags
  doc: '|INT  required flags: skip reads with mask bits unset []'
  type: string
  inputBinding:
    prefix: --incl-flags
- id: excl_flags
  doc: '|INT  filter flags: skip reads with mask bits set [UNMAP,SECONDARY,QCFAIL,DUP]'
  type: string
  inputBinding:
    prefix: --excl-flags
- id: ignore_overlaps
  doc: disable read-pair overlap detection
  type: boolean
  inputBinding:
    prefix: --ignore-overlaps
- id: output
  doc: write output to FILE [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: output_bp
  doc: output base positions on reads
  type: boolean
  inputBinding:
    prefix: --output-BP
- id: output_mq
  doc: output mapping quality
  type: boolean
  inputBinding:
    prefix: --output-MQ
- id: output_qname
  doc: output read names
  type: boolean
  inputBinding:
    prefix: --output-QNAME
- id: reference
  doc: Reference sequence FASTA FILE [null]
  type: File
  inputBinding:
    prefix: --reference
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: m_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- mpileup
