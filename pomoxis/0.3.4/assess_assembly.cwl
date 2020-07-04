class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/assess_assembly.cwl
inputs:
- id: reference_should_fasta
  doc: reference, should be a fasta file. If correspondng minimap2 indices do not
    exist they will be created. (required).
  type: boolean
  inputBinding:
    prefix: -r
- id: fastqa_input_assembly
  doc: fastq/a input assembly (required).
  type: boolean
  inputBinding:
    prefix: -i
- id: chunk_size_input
  doc: chunk size. Input reads/contigs will be broken into chunks prior to alignment,
    0 will not chunk (default 100000).
  type: boolean
  inputBinding:
    prefix: -c
- id: catalogue_errors
  doc: catalogue errors.
  type: boolean
  inputBinding:
    prefix: -C
- id: count_homopolymers
  doc: 'count homopolymers. '
  type: boolean
  inputBinding:
    prefix: -H
- id: alignment_threads_default
  doc: 'alignment threads (default: 1).'
  type: boolean
  inputBinding:
    prefix: -t
- id: output_file_prefix
  doc: 'output file prefix (default: assm).'
  type: boolean
  inputBinding:
    prefix: -p
- id: trim_consensus_primary
  doc: trim consensus to primary alignments of truth to assembly.
  type: boolean
  inputBinding:
    prefix: -T
- id: bed_file_assess
  doc: .bed file of reference regions to assess.
  type: boolean
  inputBinding:
    prefix: -b
- id: list_indels_default
  doc: 'list all indels at least this long (default: 100).  '
  type: boolean
  inputBinding:
    prefix: -l
- id: use_l_option
  doc: use with -l option to create a .bed file to exclude indels. If the -b option
    is used, the two bed files will be combined.
  type: boolean
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- assess_assembly
