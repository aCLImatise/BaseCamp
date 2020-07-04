class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/o_get_reads_from_fasta.cwl
inputs:
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
