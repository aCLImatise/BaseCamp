class: CommandLineTool
id: ../../../recognizer.py.cwl
inputs:
- id: threads
  doc: Number of threads for reCOGnizer to use. Default is number of CPUs available
    minus 2.
  type: string
  inputBinding:
    prefix: --threads
- id: output
  doc: Output directory
  type: string
  inputBinding:
    prefix: --output
- id: resources_directory
  doc: Output directory for storing COG databases and other resources
  type: string
  inputBinding:
    prefix: --resources-directory
- id: database
  doc: Basename of COG database for annotation. If multiple databases, use comma separated
    list (db1,db2,db3)
  type: string
  inputBinding:
    prefix: --database
- id: custom_database
  doc: If database was NOT produced by reCOGnizer
  type: boolean
  inputBinding:
    prefix: --custom-database
- id: max_target_seqs
  doc: Number of maximum identifications for each protein. Default is 1.
  type: long
  inputBinding:
    prefix: --max-target-seqs
- id: tsv
  doc: Tables will be produced in TSV format (and not EXCEL).
  type: boolean
  inputBinding:
    prefix: --tsv
- id: remove_spaces
  doc: BLAST ignores sequences IDs after the first space. This option changes all
    spaces to underscores to keep the full IDs.
  type: boolean
  inputBinding:
    prefix: --remove-spaces
- id: output_sequences
  doc: Protein sequences from the FASTA input will be stored in their own column.
    This produces considerably larger files.
  type: boolean
  inputBinding:
    prefix: --output-sequences
- id: file
  doc: Fasta file with protein sequences for annotation
  type: File
  inputBinding:
    prefix: --file
outputs: []
cwlVersion: v1.1
baseCommand:
- recognizer.py
