class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/stringtie.cwl
inputs:
- id: estimate_abundance_requires
  doc: estimate the abundance of given reference transcripts (requires -G)
  type: string
  inputBinding:
    prefix: -e
- id: assemble_transcripts_given
  doc: not assemble any transcripts on the given reference sequence(s)
  type: string
  inputBinding:
    prefix: -x
- id: multimapping_correction_default
  doc: 'multi-mapping correction (default: correction enabled)'
  type: string
  inputBinding:
    prefix: -u
- id: usage_message_exit
  doc: this usage message and exit
  type: string
  inputBinding:
    prefix: -h
- id: reference_annotation_include
  doc: reference annotation to include in the merging (GTF/GFF3)
  type: string
  inputBinding:
    prefix: -G
- id: output_file_name
  doc: 'output file name for the merged transcripts GTF (default: stdout)'
  type: string
  inputBinding:
    prefix: -o
- id: minimum_input_transcript_length
  doc: 'minimum input transcript length to include in the merge (default: 50)'
  type: long
  inputBinding:
    prefix: -m
- id: minimum_input_transcript_coverage
  doc: 'minimum input transcript coverage to include in the merge (default: 0)'
  type: long
  inputBinding:
    prefix: -c
- id: minimum_input_transcript_fpkm
  doc: 'minimum input transcript FPKM to include in the merge (default: 1.0)'
  type: long
  inputBinding:
    prefix: -F
- id: minimum_input_transcript_tpm
  doc: 'minimum input transcript TPM to include in the merge (default: 1.0)'
  type: long
  inputBinding:
    prefix: -T
- id: minimum_isoform_fraction
  doc: 'minimum isoform fraction (default: 0.01)'
  type: long
  inputBinding:
    prefix: -f
- id: gap_merge_together
  doc: 'gap between transcripts to merge together (default: 250)'
  type: string
  inputBinding:
    prefix: -g
- id: keep_merged_transcripts
  doc: keep merged transcripts with retained introns; by default these are not kept
    unless there is strong evidence for them
  type: boolean
  inputBinding:
    prefix: -i
- id: name_prefix_output
  doc: 'name prefix for output transcripts (default: MSTRG)'
  type: string
  inputBinding:
    prefix: -l
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: input_dot_bam_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- stringtie
