class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mini_align.cwl
inputs:
- id: reference_should_fasta
  doc: reference, should be a fasta file. If correspondng minimap indices do not exist
    they will be created. (required).
  type: boolean
  inputBinding:
    prefix: -r
- id: fastqa_input_reads
  doc: fastq/a input reads (required).
  type: boolean
  inputBinding:
    prefix: -i
- id: split_index_num
  doc: 'split index every ~NUM input bases (default: 16G, this is larger than the
    usual minimap2 default).'
  type: boolean
  inputBinding:
    prefix: -I
- id: force_recreation_index
  doc: force recreation of index file.
  type: boolean
  inputBinding:
    prefix: -f
- id: aggressively_extend_sets
  doc: aggressively extend gaps (sets -A1 -B2 -O2 -E1 for minimap2).
  type: boolean
  inputBinding:
    prefix: -a
- id: filter_only_primary
  doc: 'filter to only primary alignments (i.e. run samtools view -F 2308). Deprecated:
    this filter is now default and can be disabled with -A.'
  type: boolean
  inputBinding:
    prefix: -P
- id: filter_alignments_primary
  doc: do not filter alignments to primary alignments, output all.
  type: boolean
  inputBinding:
    prefix: -A
- id: sort_bam_read
  doc: sort bam by read name.
  type: boolean
  inputBinding:
    prefix: -n
- id: chunk_size_input
  doc: chunk size. Input reads/contigs will be broken into chunks prior to alignment.
  type: boolean
  inputBinding:
    prefix: -c
- id: alignment_threads_default
  doc: 'alignment threads (default: 1).'
  type: boolean
  inputBinding:
    prefix: -t
- id: output_file_prefix
  doc: 'output file prefix (default: reads).'
  type: boolean
  inputBinding:
    prefix: -p
- id: fill_md_tag
  doc: fill MD tag.
  type: boolean
  inputBinding:
    prefix: -m
- id: fill_cslong_tag
  doc: fill cs(=long) tag.
  type: boolean
  inputBinding:
    prefix: -s
- id: only_create_files
  doc: only create reference index files.
  type: boolean
  inputBinding:
    prefix: -X
- id: log_commands_running
  doc: log all commands before running.
  type: boolean
  inputBinding:
    prefix: -x
- id: match_score
  doc: 'match score '
  type: boolean
  inputBinding:
    prefix: -M
- id: mismatch_score
  doc: mismatch score
  type: boolean
  inputBinding:
    prefix: -S
- id: open_gat_penalty
  doc: open gat penalty
  type: boolean
  inputBinding:
    prefix: -O
- id: extend_gap_penalty
  doc: extend gap penalty.
  type: boolean
  inputBinding:
    prefix: -E
outputs: []
cwlVersion: v1.1
baseCommand:
- mini_align
