class: CommandLineTool
id: ../../../o_get_reads_from_fasta.cwl
inputs:
- id: in_compare_up_to_the_first_space
  doc: "Compare IDs in the file only up to the first space in\nthe IDs in the FASTA\
    \ file\n"
  type: boolean
  inputBinding:
    prefix: --compare-up-to-the-first-space
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- o-get-reads-from-fasta
