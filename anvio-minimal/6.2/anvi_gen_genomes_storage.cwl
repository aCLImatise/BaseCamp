class: CommandLineTool
id: anvi_gen_genomes_storage.cwl
inputs:
- id: external_genomes
  doc: A two-column TAB-delimited flat text file that lists anvi'o contigs databases.
    The first item in the header line should read 'name', and the second should read
    'contigs_db_path'. Each line in the file should describe a single entry, where
    the first column is the name of the genome (or MAG), and the second column is
    the anvi'o contigs database generated for this genome.
  type: File
  inputBinding:
    prefix: --external-genomes
- id: internal_genomes
  doc: "A five-column TAB-delimited flat text file. The header line must contain these\
    \ columns: 'name', 'bin_id', 'collection_id', 'profile_db_path', 'contigs_db_path'.\
    \ Each line should list a single entry, where 'name' can be any name to describe\
    \ the anvi'o bin identified as 'bin_id' that is stored in a collection."
  type: File
  inputBinding:
    prefix: --internal-genomes
- id: gene_caller
  doc: The gene caller to utilize. Anvi'o supports multiple gene callers, and some
    operations (including this one) requires an explicit mentioning of which one to
    use. The default is 'prodigal', but it will not be enough if you if you were a
    rebel and have used `--external- gene-callers` or something.
  type: string
  inputBinding:
    prefix: --gene-caller
- id: output_file
  doc: File path to store results.
  type: string
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-gen-genomes-storage
