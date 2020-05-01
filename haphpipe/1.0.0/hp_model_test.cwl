#!/usr/bin/env cwl-runner

baseCommand:
- hp_model_test
class: CommandLineTool
cwlVersion: v1.0
id: hp_model_test
inputs:
- doc: Alignment in FASTA or PHYLIP format
  id: seqs
  inputBinding:
    prefix: --seqs
  type: string
- doc: Prefix for output files
  id: run_id
  inputBinding:
    prefix: --run_id
  type: string
- doc: 'Name for output file (Default: modeltest_results)'
  id: out_name
  inputBinding:
    prefix: --outname
  type: string
- doc: 'Output directory (Default: .)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Data type: nt or aa'
  id: data_type
  inputBinding:
    prefix: --data_type
  type: string
- doc: Partitions file
  id: partitions
  inputBinding:
    prefix: --partitions
  type: string
- doc: Seed for random number generator
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: 'Starting topology: ml, mp, fixed-ml-jc, fixed-ml-gtr, fixed-mp, random, or
    user'
  id: topology
  inputBinding:
    prefix: --topology
  type: string
- doc: User-defined starting tree
  id: utree
  inputBinding:
    prefix: --utree
  type: string
- doc: 'force output overriding (default: False)'
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: 'Ascertainment bias correction: lewis, felsenstein, or stamatakis'
  id: asc_bias
  inputBinding:
    prefix: --asc_bias
  type: string
- doc: 'Candidate model frequencies: e (estimated) or f (fixed)'
  id: frequencies
  inputBinding:
    prefix: --frequencies
  type: string
- doc: 'Set rate heterogeneity: u (uniform), i (invariant sites +I), g (gamma +G),
    or f (both invariant sites and gamma +I+G)'
  id: het
  inputBinding:
    prefix: --het
  type: string
- doc: Text file with candidate models, one per line
  id: models
  inputBinding:
    prefix: --models
  type: string
- doc: 'Number of predefined DNA substitution schemes evaluated: 3, 5, 7, 11, or 203'
  id: schemes
  inputBinding:
    prefix: --schemes
  type: string
- doc: 'Set candidate models according to a specified tool: raxml, phyml, mrbayes,
    or paup'
  id: template
  inputBinding:
    prefix: --template
  type: string
- doc: 'Number of CPU to use (default: 1)'
  id: n_cpu
  inputBinding:
    prefix: --ncpu
  type: string
- doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Name for log file (output)
  id: log_file
  inputBinding:
    prefix: --logfile
  type: string
- doc: 'Print commands but do not run (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: 'Keep temporary directory (default: False)'
  id: keep_tmp
  inputBinding:
    prefix: --keep_tmp
  type: boolean
