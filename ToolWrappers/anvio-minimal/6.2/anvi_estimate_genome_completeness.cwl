class: CommandLineTool
id: ../../../anvi_estimate_genome_completeness.cwl
inputs:
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    prefix: --contigs-db
- id: in_external_genomes
  doc: "A two-column TAB-delimited flat text file that lists\nanvi'o contigs databases.\
    \ The first item in the header\nline should read 'name', and the second should\
    \ read\n'contigs_db_path'. Each line in the file should\ndescribe a single entry,\
    \ where the first column is the\nname of the genome (or MAG), and the second column\
    \ is\nthe anvi'o contigs database generated for this genome."
  type: File
  inputBinding:
    prefix: --external-genomes
- id: in_profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: in_collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: in_list_collections
  doc: Show available collections and exit.
  type: boolean
  inputBinding:
    prefix: --list-collections
- id: in_just_do_it
  doc: Don't bother me with questions or warnings, just do
  type: boolean
  inputBinding:
    prefix: --just-do-it
- id: in_it_dot
  doc: --concise             Don't be verbose, print less messages whenever
  type: string
  inputBinding:
    position: 0
- id: in_possible_dot
  doc: -o FILE_PATH, --output-file FILE_PATH
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-estimate-genome-completeness