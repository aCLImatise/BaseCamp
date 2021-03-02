class: CommandLineTool
id: plasmidfinder.py.cwl
inputs:
- id: in_in_file
  doc: FASTA or FASTQ input files.
  type: File[]
  inputBinding:
    prefix: --infile
- id: in_output_path
  doc: Path to blast output
  type: File?
  inputBinding:
    prefix: --outputPath
- id: in_tmp_dir
  doc: "Temporary directory for storage of the results from\nthe external software."
  type: Directory?
  inputBinding:
    prefix: --tmp_dir
- id: in_method_path
  doc: Path to method to use (kma or blastn)
  type: File?
  inputBinding:
    prefix: --methodPath
- id: in_database_path
  doc: Path to the databases
  type: File?
  inputBinding:
    prefix: --databasePath
- id: in_databases
  doc: "Databases chosen to search in - if non is specified\nall is used"
  type: string?
  inputBinding:
    prefix: --databases
- id: in_min_cov
  doc: Minimum coverage
  type: long?
  inputBinding:
    prefix: --mincov
- id: in_threshold
  doc: Minimum hreshold for identity
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_extented_output
  doc: "Give extented output with allignment files, template\nand query hits in fasta\
    \ and a tab seperated file with\ngene profile results"
  type: File?
  inputBinding:
    prefix: --extented_output
- id: in_species_info_json
  doc: "Argument used by the cge pipeline. It takes a list in\njson format consisting\
    \ of taxonomy, from domain ->\nspecies. A database is chosen based on the taxonomy."
  type: string?
  inputBinding:
    prefix: --speciesinfo_json
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: Path to blast output
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
- id: out_extented_output
  doc: "Give extented output with allignment files, template\nand query hits in fasta\
    \ and a tab seperated file with\ngene profile results"
  type: File?
  outputBinding:
    glob: $(inputs.in_extented_output)
hints: []
cwlVersion: v1.1
baseCommand:
- plasmidfinder.py
