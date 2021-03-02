class: CommandLineTool
id: phyluce_probe_run_multiple_lastzs_sqlite.cwl
inputs:
- id: in_db
  doc: The database in which to store results (also use
  type: string?
  inputBinding:
    prefix: --db
- id: in_append
  doc: adding results to an existing database)
  type: string?
  inputBinding:
    prefix: --append
- id: in_output
  doc: The directory in which to store the LASTZ files
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_probe_file
  doc: The probe file to align against the sequences
  type: File?
  inputBinding:
    prefix: --probefile
- id: in_chromo_list
  doc: "The list of organisms with genome sequences in\nchromosomes"
  type: string[]
  inputBinding:
    prefix: --chromolist
- id: in_scaffold_list
  doc: "The list of organisms with genome sequences in\nscaffolds/contigs"
  type: string[]
  inputBinding:
    prefix: --scaffoldlist
- id: in_no_dir
  doc: If genome sequences are not in their own abbr.
  type: boolean?
  inputBinding:
    prefix: --no-dir
- id: in_genome_base_path
  doc: "The base path to a directory containing genomes\nsequences"
  type: File?
  inputBinding:
    prefix: --genome-base-path
- id: in_coverage
  doc: The default coverage to search for using lastz
  type: string?
  inputBinding:
    prefix: --coverage
- id: in_identity
  doc: The default percent identity to search for using lastz
  type: string?
  inputBinding:
    prefix: --identity
- id: in_directory
  doc: --cores CORES         The number of compute cores to use
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_run_multiple_lastzs_sqlite
