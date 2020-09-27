class: CommandLineTool
id: phyluce_align_output_list_of_taxon_counts.cwl
inputs:
- id: in_fast_as
  doc: "The directory containing fastas to checked. (default:\nNone)"
  type: Directory
  inputBinding:
    prefix: --fastas
- id: in_input_format
  doc: 'The input file format. (default: fasta)'
  type: string
  inputBinding:
    prefix: --input-format
- id: in_min_count
  doc: "The min count of taxa allowed in a fasta file\n(default: 3)"
  type: long
  inputBinding:
    prefix: --min-count
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs.\n(default: 1)\n"
  type: long
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_align_output_list_of_taxon_counts
