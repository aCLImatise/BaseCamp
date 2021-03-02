class: CommandLineTool
id: haphpipe_model_test.cwl
inputs:
- id: in_seqs
  doc: Alignment in FASTA or PHYLIP format
  type: string?
  inputBinding:
    prefix: --seqs
- id: in_run_id
  doc: Prefix for output files
  type: string?
  inputBinding:
    prefix: --run_id
- id: in_out_name
  doc: 'Name for output file (Default: modeltest_results)'
  type: File?
  inputBinding:
    prefix: --outname
- id: in_outdir
  doc: 'Output directory (Default: .)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_data_type
  doc: 'Data type: nt or aa'
  type: string?
  inputBinding:
    prefix: --data_type
- id: in_partitions
  doc: Partitions file
  type: File?
  inputBinding:
    prefix: --partitions
- id: in_seed
  doc: Seed for random number generator
  type: long?
  inputBinding:
    prefix: --seed
- id: in_topology
  doc: "Starting topology: ml, mp, fixed-ml-jc, fixed-ml-gtr,\nfixed-mp, random, or\
    \ user"
  type: string?
  inputBinding:
    prefix: --topology
- id: in_utree
  doc: User-defined starting tree
  type: string?
  inputBinding:
    prefix: --utree
- id: in_force
  doc: 'force output overriding (default: False)'
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_asc_bias
  doc: 'Ascertainment bias correction: lewis, felsenstein, or'
  type: string?
  inputBinding:
    prefix: --asc_bias
- id: in_het
  doc: "Set rate heterogeneity: u (uniform), i (invariant\nsites +I), g (gamma +G),\
    \ or f (both invariant sites\nand gamma +I+G)"
  type: string?
  inputBinding:
    prefix: --het
- id: in_models
  doc: Text file with candidate models, one per line
  type: File?
  inputBinding:
    prefix: --models
- id: in_schemes
  doc: "Number of predefined DNA substitution schemes\nevaluated: 3, 5, 7, 11, or\
    \ 203"
  type: long?
  inputBinding:
    prefix: --schemes
- id: in_template
  doc: "Set candidate models according to a specified tool:\nraxml, phyml, mrbayes,\
    \ or paup"
  type: string?
  inputBinding:
    prefix: --template
- id: in_n_cpu
  doc: 'Number of CPU to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --ncpu
- id: in_quiet
  doc: "Do not write output to console (silence stdout and\nstderr) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_log_file
  doc: Name for log file (output)
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_keep_tmp
  doc: 'Keep temporary directory (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep_tmp
- id: in_stam_a_takis
  doc: --frequencies FREQUENCIES
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_name
  doc: 'Name for output file (Default: modeltest_results)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_name)
- id: out_outdir
  doc: 'Output directory (Default: .)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_log_file
  doc: Name for log file (output)
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/haphpipe:1.0.3--py_0
cwlVersion: v1.1
baseCommand:
- haphpipe
- model_test
