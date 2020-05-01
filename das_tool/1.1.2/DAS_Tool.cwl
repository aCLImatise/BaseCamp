#!/usr/bin/env cwl-runner

baseCommand:
- DAS_Tool
class: CommandLineTool
cwlVersion: v1.0
id: das_tool
inputs:
- doc: ',...,methodN -c contigs.fa -o myOutput'
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: Comma separated list of tab separated scaffolds to bin tables.
  id: bins
  inputBinding:
    prefix: --bins
  type: boolean
- doc: Contigs in fasta format.
  id: contigs
  inputBinding:
    prefix: --contigs
  type: boolean
- doc: Basename of output files.
  id: output_basename
  inputBinding:
    prefix: --outputbasename
  type: boolean
- doc: Comma separated list of binning prediction names. (optional)
  id: labels
  inputBinding:
    prefix: --labels
  type: boolean
- doc: 'Engine used for single copy gene identification [blast/diamond/usearch]. (default:
    usearch)'
  id: search_engine
  inputBinding:
    prefix: --search_engine
  type: boolean
- doc: 'Write evaluation for each input bin set [0/1]. (default: 1)'
  id: write_bin_evals
  inputBinding:
    prefix: --write_bin_evals
  type: boolean
- doc: 'Create binning performance plots [0/1]. (default: 1)'
  id: create_plots
  inputBinding:
    prefix: --create_plots
  type: boolean
- doc: 'Export bins as fasta files  [0/1]. (default: 0)'
  id: write_bins
  inputBinding:
    prefix: --write_bins
  type: boolean
- doc: 'Report unbinned contigs. To export as fasta file also set write_bins==1 [0/1].
    (default: 0)'
  id: write_unbinned
  inputBinding:
    prefix: --write_unbinned
  type: boolean
- doc: Predicted proteins in prodigal fasta format (>scaffoldID_geneNo). Gene prediction
    step will be skipped if given. (optional)
  id: proteins
  inputBinding:
    prefix: --proteins
  type: boolean
- doc: 'Number of threads to use. (default: 1)'
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
- doc: 'Score threshold until selection algorithm will keep selecting bins [0..1].
    (default: 0.5)'
  id: score_threshold
  inputBinding:
    prefix: --score_threshold
  type: boolean
- doc: "Penalty for duplicate single copy genes per bin (weight b). Only change if\
    \ you know what you're doing. [0..3] (default: 0.6)"
  id: duplicate_penalty
  inputBinding:
    prefix: --duplicate_penalty
  type: boolean
- doc: "Penalty for megabins (weight c). Only change if you know what you're doing.\
    \ [0..3] (default: 0.5)"
  id: mega_bin_penalty
  inputBinding:
    prefix: --megabin_penalty
  type: boolean
- doc: 'Directory of single copy gene database. (default: install_dir/db)'
  id: db_directory
  inputBinding:
    prefix: --db_directory
  type: boolean
- doc: 'Use existing predicted single copy gene files from a previous run [0/1]. (default:
    0)'
  id: resume
  inputBinding:
    prefix: --resume
  type: boolean
- doc: Write debug information to log file.
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
