class: CommandLineTool
id: datafunk_AA_finder.cwl
inputs:
- id: in_input_fast_a
  doc: Alignment (to Wuhan-Hu-1) in Fasta format to type
  type: long?
  inputBinding:
    prefix: --input-fasta
- id: in_codons_file
  doc: "Input CSV file with codon locations to parse. Format\nis: name,1-based start\
    \ position of codon (dont include\na header line), eg: d614g,23402"
  type: File?
  inputBinding:
    prefix: --codons-file
- id: in_genotypes_table
  doc: "CSV file with amino acid typing results to write.\nReturns the amino acid\
    \ at each position in --codons-\nfile for each sequence in --input-fasta, or \"\
    X\" for\nmissing data\n"
  type: File?
  inputBinding:
    prefix: --genotypes-table
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
- AA_finder
