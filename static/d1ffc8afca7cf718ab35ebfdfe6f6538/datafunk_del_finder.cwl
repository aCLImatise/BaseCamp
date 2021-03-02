class: CommandLineTool
id: datafunk_del_finder.cwl
inputs:
- id: in_input_fast_a
  doc: Alignment (to Wuhan-Hu-1) in Fasta format to type
  type: long?
  inputBinding:
    prefix: --input-fasta
- id: in_deletions_file
  doc: "Input CSV file with deletions type. Format is: 1-based\nstart position of\
    \ deletion,length of deletion (dont\ninclude a header line), eg: 1605,3"
  type: File?
  inputBinding:
    prefix: --deletions-file
- id: in_genotypes_table
  doc: "CSV file with deletion typing results to write.\nReturns the genotype for\
    \ each deletion in --deletions-\nfile for each sequence in --input-fasta: either\
    \ \"ref\",\n\"del\" or \"X\" (for missing data)"
  type: File?
  inputBinding:
    prefix: --genotypes-table
- id: in_output_fast_a
  doc: Fasta file to write
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_append_as_snp
  doc: "If invoked, then append the genotype of the deletion\nas a SNP on the end\
    \ of the alignment\n"
  type: boolean?
  inputBinding:
    prefix: --append-as-SNP
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- datafunk
- del_finder
