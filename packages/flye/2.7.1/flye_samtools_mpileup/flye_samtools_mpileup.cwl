class: CommandLineTool
id: flye_samtools_mpileup.cwl
inputs:
- id: in_illumina_one_dot_three
  doc: +      quality is in the Illumina-1.3+ encoding
  type: boolean
  inputBinding:
    prefix: --illumina1.3
- id: in_count_orphans
  doc: do not discard anomalous read pairs
  type: boolean
  inputBinding:
    prefix: --count-orphans
- id: in_bam_list
  doc: list of input BAM filenames, one per line
  type: File
  inputBinding:
    prefix: --bam-list
- id: in_no_baq
  doc: disable BAQ (per-Base Alignment Quality)
  type: boolean
  inputBinding:
    prefix: --no-BAQ
- id: in_adjust_mq
  doc: adjust mapping quality; recommended:50, disable:0 [0]
  type: long
  inputBinding:
    prefix: --adjust-MQ
- id: in_max_depth
  doc: max per-file depth; avoids excessive memory usage [8000]
  type: long
  inputBinding:
    prefix: --max-depth
- id: in_redo_baq
  doc: recalculate BAQ on the fly, ignore existing BQs
  type: boolean
  inputBinding:
    prefix: --redo-BAQ
- id: in_fast_a_ref
  doc: faidx indexed reference sequence file
  type: File
  inputBinding:
    prefix: --fasta-ref
- id: in_exclude_rg
  doc: exclude read groups listed in FILE
  type: File
  inputBinding:
    prefix: --exclude-RG
- id: in_positions
  doc: skip unlisted positions (chr pos) or regions (BED)
  type: File
  inputBinding:
    prefix: --positions
- id: in_min_mq
  doc: skip alignments with mapQ smaller than INT [0]
  type: long
  inputBinding:
    prefix: --min-MQ
- id: in_min_bq
  doc: skip bases with baseQ/BAQ smaller than INT [13]
  type: long
  inputBinding:
    prefix: --min-BQ
- id: in_region
  doc: region in which pileup is generated
  type: string
  inputBinding:
    prefix: --region
- id: in_ignore_rg
  doc: ignore RG tags (one BAM = one sample)
  type: boolean
  inputBinding:
    prefix: --ignore-RG
- id: in_incl_flags
  doc: '|INT  required flags: skip reads with mask bits unset []'
  type: long
  inputBinding:
    prefix: --incl-flags
- id: in_excl_flags
  doc: "|INT  filter flags: skip reads with mask bits set\n[UNMAP,SECONDARY,QCFAIL,DUP]"
  type: long
  inputBinding:
    prefix: --excl-flags
- id: in_ignore_overlaps
  doc: disable read-pair overlap detection
  type: boolean
  inputBinding:
    prefix: --ignore-overlaps
- id: in_output
  doc: write output to FILE [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: in_output_bp
  doc: output base positions on reads
  type: boolean
  inputBinding:
    prefix: --output-BP
- id: in_output_mq
  doc: output mapping quality
  type: boolean
  inputBinding:
    prefix: --output-MQ
- id: in_output_qname
  doc: output read names
  type: boolean
  inputBinding:
    prefix: --output-QNAME
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File
  inputBinding:
    prefix: --input-fmt-option
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File
  inputBinding:
    prefix: --reference
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_m_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write output to FILE [standard output]
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- flye-samtools
- mpileup
