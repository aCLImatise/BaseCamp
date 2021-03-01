class: CommandLineTool
id: mini_align.cwl
inputs:
- id: in_reference_be_file
  doc: "reference, should be a fasta file. If correspondng minimap indices\ndo not\
    \ exist they will be created. (required)."
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_fastqa_input_reads
  doc: fastq/a input reads (required).
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_split_index_num
  doc: "split index every ~NUM input bases (default: 16G, this is larger\nthan the\
    \ usual minimap2 default)."
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_force_recreation_index
  doc: force recreation of index file.
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_aggressively_extend_gaps
  doc: aggressively extend gaps (sets -A1 -B2 -O2 -E1 for minimap2).
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_filter_only_primary
  doc: "filter to only primary alignments (i.e. run samtools view -F 2308).\nDeprecated:\
    \ this filter is now default and can be disabled with -A."
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_filter_alignments_output
  doc: do not filter alignments to primary alignments, output all.
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_sort_bam_read
  doc: sort bam by read name.
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_chunk_size_input
  doc: "chunk size. Input reads/contigs will be broken into chunks\nprior to alignment."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_alignment_threads_default
  doc: 'alignment threads (default: 1).'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_output_file_prefix
  doc: 'output file prefix (default: reads).'
  type: File?
  inputBinding:
    prefix: -p
- id: in_fill_md_tag
  doc: fill MD tag.
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_fill_cslong_tag
  doc: fill cs(=long) tag.
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_only_create_files
  doc: only create reference index files.
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_log_commands_running
  doc: log all commands before running.
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_match_score
  doc: match score
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_mismatch_score
  doc: mismatch score
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_open_gat_penalty
  doc: open gat penalty
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_extend_gap_penalty
  doc: extend gap penalty.
  type: boolean?
  inputBinding:
    prefix: -E
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: 'output file prefix (default: reads).'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pomoxis:0.3.6--py_0
cwlVersion: v1.1
baseCommand:
- mini_align
