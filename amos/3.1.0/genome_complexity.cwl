class: CommandLineTool
id: ../../../genome_complexity.cwl
inputs:
- id: fasta_file_evaluate
  doc: fasta file to evaluate
  type: string
  inputBinding:
    prefix: -f
- id: length_consider_default
  doc: Length of mers to consider (default:30)
  type: string
  inputBinding:
    prefix: -k
- id: just_compress_graph
  doc: Just compress graph, dont apply other simplifications
  type: boolean
  inputBinding:
    prefix: -c
- id: comprss_first_node
  doc: Dont comprss the very first or last node in the graph
  type: boolean
  inputBinding:
    prefix: -e
- id: interpret_genome_circular
  doc: Interpret genome as circular
  type: boolean
  inputBinding:
    prefix: -C
- id: display_start_positions
  doc: Display the start positions and length of each sequence
  type: boolean
  inputBinding:
    prefix: -p
- id: display_sequences_edge
  doc: Display the sequences for edge node
  type: boolean
  inputBinding:
    prefix: -d
- id: only_show_bp
  doc: Only show first and last 4 bp for sequences longer than <len>
  type: string
  inputBinding:
    prefix: -D
- id: just_compute_graph
  doc: Just Compute graph statistics
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- genome-complexity
