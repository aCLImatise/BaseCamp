class: CommandLineTool
id: interested_gene_generation.pl.cwl
inputs:
- id: genbank_file_directory
  doc: 'A directory containing annotated genomes as Genbank format file. To avoid
    a mistake, genome names cannot use special character, such as space, equal. For
    large number of genomes, users are recommended to download using Aspera, a high-speed
    file transfer tool (https://downloads.asperasoft.com/).                           '
  type: boolean
  inputBinding:
    prefix: --genbank_file_directory
- id: database
  doc: A protein database in FASTA format, which contains at least one protein sequence
    homologous to the gene of interest.
  type: boolean
  inputBinding:
    prefix: --database
- id: output_directory
  doc: An output directory holding all the generated files by interested_gene_generation.pl.
    if this option is not set, interested_gene_generation.pl will create a directory
    named "interested_gene_workplace" in the bin directory from where interested_gene_generation.pl
    was invoked.
  type: boolean
  inputBinding:
    prefix: --output_directory
- id: multiple_threads
  doc: 'set thread number (Default: 1)'
  type: boolean
  inputBinding:
    prefix: --multiple_threads
- id: start_at_blast
  doc: 'Jump to a local blastp analysis, and Skips sequencing extraction (Default:
    T).  '
  type: boolean
  inputBinding:
    prefix: --start_at_blast
- id: e_value
  doc: 'set E-value cutoff in Blast analysi (default: 1e-5)'
  type: boolean
  inputBinding:
    prefix: --e_value
- id: identify
  doc: 'set percent identity cutoff in Blast analysis (default: 30)'
  type: boolean
  inputBinding:
    prefix: --identify
- id: coverage
  doc: 'set percent coverage (Query and Subject) cutoff in Blast analysis (default:
    50)'
  type: boolean
  inputBinding:
    prefix: --coverage
- id: match_length
  doc: 'set alignment length cutoff in Blast analysis (default: 30) '
  type: boolean
  inputBinding:
    prefix: --match_length
outputs: []
cwlVersion: v1.1
baseCommand:
- interested_gene_generation.pl
