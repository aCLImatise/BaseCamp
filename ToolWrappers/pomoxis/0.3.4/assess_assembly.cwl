class: CommandLineTool
id: assess_assembly.cwl
inputs:
- id: in_reference_should_fasta
  doc: "reference, should be a fasta file. If correspondng minimap2 indices\ndo not\
    \ exist they will be created. (required)."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_fastqa_input_assembly
  doc: fastq/a input assembly (required).
  type: boolean
  inputBinding:
    prefix: -i
- id: in_chunk_size_input
  doc: "chunk size. Input reads/contigs will be broken into chunks\nprior to alignment,\
    \ 0 will not chunk (default 100000)."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_catalogue_errors
  doc: catalogue errors.
  type: boolean
  inputBinding:
    prefix: -C
- id: in_count_homopolymers
  doc: count homopolymers.
  type: boolean
  inputBinding:
    prefix: -H
- id: in_alignment_threads_default
  doc: 'alignment threads (default: 1).'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_output_file_prefix
  doc: 'output file prefix (default: assm).'
  type: File
  inputBinding:
    prefix: -p
- id: in_trim_consensus_primary
  doc: trim consensus to primary alignments of truth to assembly.
  type: boolean
  inputBinding:
    prefix: -T
- id: in_file_reference_assess
  doc: .bed file of reference regions to assess.
  type: boolean
  inputBinding:
    prefix: -b
- id: in_list_indels_default
  doc: 'list all indels at least this long (default: 100).'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_use_l_option
  doc: use with -l option to create a .bed file to exclude indels. If the -b option
    is used, the two bed files will be combined.
  type: boolean
  inputBinding:
    prefix: -e
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: 'output file prefix (default: assm).'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
cwlVersion: v1.1
baseCommand:
- assess_assembly
