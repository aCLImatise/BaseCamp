class: CommandLineTool
id: o_get_reads_from_fasta_input_fasta.cwl
inputs:
- id: input_fast_a
  doc: Input FASTA file path
  type: string
  inputBinding:
    position: 0
- id: ids_file
  doc: Text file with read IDs in each line to sample from the input file
  type: string
  inputBinding:
    position: 1
- id: output_fast_a
  doc: Output FASTA file path
  type: string
  inputBinding:
    position: 2
- id: compare_up_to_the_first_space
  doc: Compare IDs in the file only up to the first space in the IDs in the FASTA
    file
  type: boolean
  inputBinding:
    prefix: --compare-up-to-the-first-space
outputs: []
cwlVersion: v1.1
baseCommand:
- o-get-reads-from-fasta
- input_fasta
