class: CommandLineTool
id: phyluce_align_output_list_of_taxon_counts.cwl
inputs:
- id: fast_as
  doc: 'The directory containing fastas to checked. (default: None)'
  type: string
  inputBinding:
    prefix: --fastas
- id: input_format
  doc: 'The input file format. (default: fasta)'
  type: string
  inputBinding:
    prefix: --input-format
- id: min_count
  doc: 'The min count of taxa allowed in a fasta file (default: 3)'
  type: long
  inputBinding:
    prefix: --min-count
- id: cores
  doc: 'Process alignments in parallel using --cores for alignment. This is the number
    of PHYSICAL CPUs. (default: 1)'
  type: string
  inputBinding:
    prefix: --cores
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_output_list_of_taxon_counts
