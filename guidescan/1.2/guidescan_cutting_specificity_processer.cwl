#!/usr/bin/env cwl-runner

baseCommand:
- guidescan_cutting_specificity_processer
class: CommandLineTool
cwlVersion: v1.0
id: guidescan_cutting_specificity_processer
inputs:
- doc: absolute filepath to directory hosting sgRNA database with no cutting specificity
    scores
  id: database_directory
  inputBinding:
    prefix: --database_directory
  type: string
- doc: filename of sgRNA database with no cutting specificity scores
  id: database_name
  inputBinding:
    prefix: --database_name
  type: string
- doc: absolute filepath to directory hosting either X_all_kmers.txt.gz or X_all_kmers_counted.txt
  id: km_ers_file
  inputBinding:
    prefix: --kmers_file
  type: string
- doc: absolute filepath to organism FASTA file. Index for FASTA should also be present
    in same directory (.fai). Must be single aggregate FASTA file for organism
  id: fast_a_file_path
  inputBinding:
    prefix: --fasta_filepath
  type: string
- doc: absolute filepath to directory hosting sgRNA database with cutting specificity
    scores already included and generated with all the same run parameters as another
    database except for -d. This parameter, coupled with -n2, allows for the transfer
    of cutting efficiency scores between two sgRNA databases that differ only in how
    many mismatches off-targets are enumerated to
  id: database_directory_2
  inputBinding:
    prefix: --database_directory2
  type: string
- doc: filename of sgRNA database with cutting specificity scores already included
    and generated with all the same run parameters as another database except for
    -d. This parameter, coupled with -d2, allows for the transfer of cutting efficiency
    scores between two sgRNA databases that differ only in how many mismatches off-targets
    are enumerated to
  id: database_name_2
  inputBinding:
    prefix: --database_name2
  type: string
