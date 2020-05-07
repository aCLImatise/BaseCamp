class: CommandLineTool
id: phyluce_probe_run_multiple_lastzs_sqlite.cwl
inputs:
- id: db
  doc: The database in which to store results (also use --append if adding results
    to an existing database)
  type: string
  inputBinding:
    prefix: --db
- id: output
  doc: The directory in which to store the LASTZ files
  type: string
  inputBinding:
    prefix: --output
- id: probe_file
  doc: The probe file to align against the sequences
  type: string
  inputBinding:
    prefix: --probefile
- id: chromo_list
  doc: The list of organisms with genome sequences in chromosomes
  type: string[]
  inputBinding:
    prefix: --chromolist
- id: scaffold_list
  doc: The list of organisms with genome sequences in scaffolds/contigs
  type: string[]
  inputBinding:
    prefix: --scaffoldlist
- id: append
  doc: Insert results to an existing database
  type: boolean
  inputBinding:
    prefix: --append
- id: no_dir
  doc: If genome sequences are not in their own abbr. directory
  type: boolean
  inputBinding:
    prefix: --no-dir
- id: cores
  doc: The number of compute cores to use
  type: string
  inputBinding:
    prefix: --cores
- id: genome_base_path
  doc: The base path to a directory containing genomes sequences
  type: string
  inputBinding:
    prefix: --genome-base-path
- id: coverage
  doc: The default coverage to search for using lastz
  type: string
  inputBinding:
    prefix: --coverage
- id: identity
  doc: The default percent identity to search for using lastz
  type: string
  inputBinding:
    prefix: --identity
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_run_multiple_lastzs_sqlite
