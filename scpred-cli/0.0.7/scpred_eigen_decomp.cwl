#!/usr/bin/env cwl-runner

baseCommand:
- scpred_eigen_decomp.R
class: CommandLineTool
cwlVersion: v1.0
id: scpred_eigen_decomp.r
inputs:
- doc: Path to the training matrix in .rds format
  id: training_matrix
  inputBinding:
    prefix: --training-matrix
  type: string
- doc: 'Should log-transform be performed on the matrix? Default: TRUE'
  id: log_transform
  inputBinding:
    prefix: --log-transform
  type: string
- doc: Path to the training labels (metadata) in text format
  id: training_labels
  inputBinding:
    prefix: --training-labels
  type: string
- doc: Number of pricipal components for eigenvalue decomposition
  id: principal_comps
  inputBinding:
    prefix: --principal-comps
  type: string
- doc: Seed for random number generator
  id: random_seed
  inputBinding:
    prefix: --random-seed
  type: string
- doc: Output path for the scPred object in .rds format
  id: output_path
  inputBinding:
    prefix: --output-path
  type: string
