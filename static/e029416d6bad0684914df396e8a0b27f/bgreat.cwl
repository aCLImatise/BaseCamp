class: CommandLineTool
id: bgreat.cwl
inputs:
- id: in_file_unpaired
  doc: file (unpaired)
  type: File?
  inputBinding:
    prefix: -u
- id: in_file_paired
  doc: file (paired)
  type: File?
  inputBinding:
    prefix: -x
- id: in_value_used_graph
  doc: value used for graph
  type: string?
  inputBinding:
    prefix: -k
- id: in_file_unitigfa
  doc: file (unitig.fa)
  type: File?
  inputBinding:
    prefix: -g
- id: in_file_paths
  doc: file (paths)
  type: File?
  inputBinding:
    prefix: -f
- id: in_read_file_fastq
  doc: read file are FASTQ
  type: File?
  inputBinding:
    prefix: -q
- id: in_keep_order_reads
  doc: keep order of the reads
  type: string?
  inputBinding:
    prefix: -O
- id: in_length
  doc: length (31)
  type: long?
  inputBinding:
    prefix: -a
- id: in_of_missmatch_allowed
  doc: of missmatch allowed (5)
  type: long?
  inputBinding:
    prefix: -m
- id: in_of_threads_used
  doc: of threads used (1)
  type: long?
  inputBinding:
    prefix: -t
- id: in_output_corrected_reads
  doc: output corrected reads
  type: string?
  inputBinding:
    prefix: -c
- id: in_compress_output_file
  doc: compress output file
  type: File?
  inputBinding:
    prefix: -z
- id: in_fraction_indexed_default
  doc: fraction to be indexed (default 1=all, 5 for one out of 5)
  type: long?
  inputBinding:
    prefix: -i
- id: in_output_compressed_reads
  doc: output compressed reads
  type: string?
  inputBinding:
    prefix: -C
- id: in_more_precise_output
  doc: more precise output
  type: string?
  inputBinding:
    prefix: -p
- id: in_print_the_alignments
  doc: print the alignments
  type: string?
  inputBinding:
    prefix: -P
- id: in_output_all_possible_mapping
  doc: output all possible mapping
  type: string?
  inputBinding:
    prefix: -A
- id: in_output_possible_optimal_mapping
  doc: output all possible optimal mapping
  type: string?
  inputBinding:
    prefix: -B
- id: in_occurence_of_anchor
  doc: occurence of an anchor (1)
  type: long?
  inputBinding:
    prefix: -o
- id: in_put_in_mapping
  doc: put in mapping (1000)
  type: long?
  inputBinding:
    prefix: -e
- id: in_output_optimal_mapping
  doc: output any optimal mapping
  type: string?
  inputBinding:
    prefix: -F
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_compress_output_file
  doc: compress output file
  type: File?
  outputBinding:
    glob: $(inputs.in_compress_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- bgreat
