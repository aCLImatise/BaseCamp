class: CommandLineTool
id: hp_model_test.cwl
inputs:
- id: seqs
  doc: Alignment in FASTA or PHYLIP format
  type: string
  inputBinding:
    prefix: --seqs
- id: run_id
  doc: Prefix for output files
  type: string
  inputBinding:
    prefix: --run_id
- id: out_name
  doc: 'Name for output file (Default: modeltest_results)'
  type: string
  inputBinding:
    prefix: --outname
- id: outdir
  doc: 'Output directory (Default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: data_type
  doc: 'Data type: nt or aa'
  type: string
  inputBinding:
    prefix: --data_type
- id: partitions
  doc: Partitions file
  type: string
  inputBinding:
    prefix: --partitions
- id: seed
  doc: Seed for random number generator
  type: string
  inputBinding:
    prefix: --seed
- id: topology
  doc: 'Starting topology: ml, mp, fixed-ml-jc, fixed-ml-gtr, fixed-mp, random, or
    user'
  type: string
  inputBinding:
    prefix: --topology
- id: utree
  doc: User-defined starting tree
  type: string
  inputBinding:
    prefix: --utree
- id: force
  doc: 'force output overriding (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: asc_bias
  doc: 'Ascertainment bias correction: lewis, felsenstein, or stamatakis'
  type: string
  inputBinding:
    prefix: --asc_bias
- id: frequencies
  doc: 'Candidate model frequencies: e (estimated) or f (fixed)'
  type: string
  inputBinding:
    prefix: --frequencies
- id: het
  doc: 'Set rate heterogeneity: u (uniform), i (invariant sites +I), g (gamma +G),
    or f (both invariant sites and gamma +I+G)'
  type: string
  inputBinding:
    prefix: --het
- id: models
  doc: Text file with candidate models, one per line
  type: string
  inputBinding:
    prefix: --models
- id: schemes
  doc: 'Number of predefined DNA substitution schemes evaluated: 3, 5, 7, 11, or 203'
  type: string
  inputBinding:
    prefix: --schemes
- id: template
  doc: 'Set candidate models according to a specified tool: raxml, phyml, mrbayes,
    or paup'
  type: string
  inputBinding:
    prefix: --template
- id: n_cpu
  doc: 'Number of CPU to use (default: 1)'
  type: string
  inputBinding:
    prefix: --ncpu
- id: quiet
  doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: log_file
  doc: Name for log file (output)
  type: string
  inputBinding:
    prefix: --logfile
- id: debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: keep_tmp
  doc: 'Keep temporary directory (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_tmp
outputs: []
cwlVersion: v1.1
baseCommand:
- hp_model_test
