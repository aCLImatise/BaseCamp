class: CommandLineTool
id: guidescan_cutting_specificity_processer.cwl
inputs:
- id: database_directory
  doc: absolute filepath to directory hosting sgRNA database with no cutting specificity
    scores
  type: string
  inputBinding:
    prefix: --database_directory
- id: database_name
  doc: filename of sgRNA database with no cutting specificity scores
  type: string
  inputBinding:
    prefix: --database_name
- id: km_ers_file
  doc: absolute filepath to directory hosting either X_all_kmers.txt.gz or X_all_kmers_counted.txt
  type: string
  inputBinding:
    prefix: --kmers_file
- id: fast_a_file_path
  doc: absolute filepath to organism FASTA file. Index for FASTA should also be present
    in same directory (.fai). Must be single aggregate FASTA file for organism
  type: string
  inputBinding:
    prefix: --fasta_filepath
- id: database_directory_2
  doc: absolute filepath to directory hosting sgRNA database with cutting specificity
    scores already included and generated with all the same run parameters as another
    database except for -d. This parameter, coupled with -n2, allows for the transfer
    of cutting efficiency scores between two sgRNA databases that differ only in how
    many mismatches off-targets are enumerated to
  type: string
  inputBinding:
    prefix: --database_directory2
- id: database_name_2
  doc: filename of sgRNA database with cutting specificity scores already included
    and generated with all the same run parameters as another database except for
    -d. This parameter, coupled with -d2, allows for the transfer of cutting efficiency
    scores between two sgRNA databases that differ only in how many mismatches off-targets
    are enumerated to
  type: string
  inputBinding:
    prefix: --database_name2
outputs: []
cwlVersion: v1.1
baseCommand:
- guidescan_cutting_specificity_processer
