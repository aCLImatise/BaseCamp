#!/usr/bin/env cwl-runner

baseCommand:
- vcf_to_matrix
class: CommandLineTool
cwlVersion: v1.0
id: vcf_to_matrix
inputs:
- doc: Data passing mode, must be set to 'commandline' or 'xml'.
  id: mode
  inputBinding:
    prefix: --mode
  type: string
- doc: Path to input reference fasta file.
  id: reference_fast_a
  inputBinding:
    prefix: --reference-fasta
  type: string
- doc: Path to input reference dups file.
  id: reference_dups
  inputBinding:
    prefix: --reference-dups
  type: string
- doc: Path to input VCF/fasta files for matrix conversion.
  id: input_files
  inputBinding:
    prefix: --input-files
  type:
    items: string
    type: array
- doc: Name of folder to write output matries to.
  id: matrix_folder
  inputBinding:
    prefix: --matrix-folder
  type: string
- doc: Name of folder to write statistics files to.
  id: stats_folder
  inputBinding:
    prefix: --stats-folder
  type: string
- doc: Minimum coverage depth at a position.
  id: minimum_coverage
  inputBinding:
    prefix: --minimum-coverage
  type: long
- doc: Minimum proportion of reads that must match the call at a position.
  id: minimum_proportion
  inputBinding:
    prefix: --minimum-proportion
  type: long
- doc: Number of threads to use when processing input.
  id: num_threads
  inputBinding:
    prefix: --num-threads
  type: string
- doc: Path to a matrix_dto XML file that defines all the parameters.
  id: d_to_file
  inputBinding:
    prefix: --dto-file
  type: string
