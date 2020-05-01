#!/usr/bin/env cwl-runner

baseCommand:
- prince
class: CommandLineTool
cwlVersion: v1.0
id: prince
inputs:
- doc: output file for training data / training data used to predict copy numbers
    for queries
  id: boost_output
  inputBinding:
    prefix: --boost_output
  type: string
- doc: output file for query copy number predictions
  id: target_output
  inputBinding:
    prefix: --target_output
  type: string
- doc: VNTR templates. Default is for M.TB
  id: templates
  inputBinding:
    prefix: --templates
  type: string
- doc: target genome names in a text file
  id: target_file
  inputBinding:
    prefix: --target_file
  type: string
- doc: training genome file names in a text file
  id: boosting_file
  inputBinding:
    prefix: --boosting_file
  type: string
- doc: Kmer size used during read recruitment.
  id: k
  inputBinding:
    prefix: --k
  type: string
- doc: Copy number for training genome.
  id: copy_number
  inputBinding:
    prefix: --copynumber
  type: string
- doc: Flanking sequences used in coverage adjustments
  id: primers
  inputBinding:
    prefix: --primers
  type: string
- doc: Number of cores for parallel processing.
  id: num_procs
  inputBinding:
    prefix: --num_procs
  type: string
