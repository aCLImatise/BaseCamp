class: CommandLineTool
id: recognizer.py.cwl
inputs:
- id: in_threads
  doc: "Number of threads for reCOGnizer to use. Default is\nnumber of CPUs available\
    \ minus 2."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_download_resources
  doc: "If resources for reCOGnizer are not available at\n\"resources_directory\""
  type: boolean?
  inputBinding:
    prefix: --download-resources
- id: in_resources_directory
  doc: "Output directory for storing databases and other\nresources"
  type: Directory?
  inputBinding:
    prefix: --resources-directory
- id: in_dbs
  doc: "[{CDD,Pfam,NCBIfam,Protein_Clusters,Smart,TIGRFAM,COG,KOG} ...], --databases\
    \ {CDD,Pfam,NCBIfam,Protein_Clusters,Smart,TIGRFAM,COG,KOG} [{CDD,Pfam,NCBIfam,Protein_Clusters,Smart,TIGRFAM,COG,KOG}\
    \ ...]\nDatabases to include in functional annotation"
  type: string?
  inputBinding:
    prefix: -dbs
- id: in_database
  doc: "Basename of database for annotation. If multiple\ndatabases, use comma separated\
    \ list (db1,db2,db3)"
  type: long?
  inputBinding:
    prefix: --database
- id: in_custom_database
  doc: If database was NOT produced by reCOGnizer
  type: boolean?
  inputBinding:
    prefix: --custom-database
- id: in_max_target_seqs
  doc: "Number of maximum identifications for each protein.\nDefault is 1."
  type: long?
  inputBinding:
    prefix: --max-target-seqs
- id: in_tsv
  doc: Tables will be produced in TSV format (and not EXCEL).
  type: boolean?
  inputBinding:
    prefix: --tsv
- id: in_remove_spaces
  doc: "BLAST ignores sequences IDs after the first space.\nThis option changes all\
    \ spaces to underscores to keep\nthe full IDs."
  type: boolean?
  inputBinding:
    prefix: --remove-spaces
- id: in_no_output_sequences
  doc: "Protein sequences from the FASTA input will be stored\nin their own column."
  type: boolean?
  inputBinding:
    prefix: --no-output-sequences
- id: in_no_blast_info
  doc: "Information from the alignment will be stored in their\nown columns."
  type: boolean?
  inputBinding:
    prefix: --no-blast-info
- id: in_file
  doc: Fasta file with protein sequences for annotation
  type: File?
  inputBinding:
    prefix: --file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_resources_directory
  doc: "Output directory for storing databases and other\nresources"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_resources_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/recognizer:1.4.3--0
cwlVersion: v1.1
baseCommand:
- recognizer.py
