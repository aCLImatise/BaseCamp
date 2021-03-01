class: CommandLineTool
id: genome_complexity.cwl
inputs:
- id: in_fasta_file_evaluate
  doc: fasta file to evaluate
  type: File?
  inputBinding:
    prefix: -f
- id: in_length_consider_default
  doc: Length of mers to consider (default:30)
  type: long?
  inputBinding:
    prefix: -k
- id: in_just_compress_graph
  doc: Just compress graph, dont apply other simplifications
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_comprss_first_node
  doc: Dont comprss the very first or last node in the graph
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_interpret_genome_circular
  doc: Interpret genome as circular
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_display_start_positions
  doc: Display the start positions and length of each sequence
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_display_sequences_node
  doc: Display the sequences for edge node
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_only_show_first
  doc: Only show first and last 4 bp for sequences longer than <len>
  type: long?
  inputBinding:
    prefix: -D
- id: in_just_compute_graph
  doc: Just Compute graph statistics
  type: boolean?
  inputBinding:
    prefix: -S
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- genome-complexity
