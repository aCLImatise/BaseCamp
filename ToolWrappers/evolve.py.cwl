class: CommandLineTool
id: evolve.py.cwl
inputs:
- id: in_output_dir
  doc: 'Path to output directory (default: None)'
  type: File
  inputBinding:
    prefix: --output-dir
- id: in_write_backups_every
  doc: "Number of iterations to go between writing backups of\nprogram state (default:\
    \ 100)"
  type: long
  inputBinding:
    prefix: --write-backups-every
- id: in_write_state_every
  doc: "Number of iterations between writing program state to\ndisk. Higher values\
    \ reduce IO burden at the cost of\nlosing progress made if program is interrupted.\n\
    (default: 10)"
  type: long
  inputBinding:
    prefix: --write-state-every
- id: in_burnin_samples
  doc: 'Number of burnin samples (default: 1000)'
  type: long
  inputBinding:
    prefix: --burnin-samples
- id: in_mcmc_samples
  doc: 'Number of MCMC samples (default: 2500)'
  type: long
  inputBinding:
    prefix: --mcmc-samples
- id: in_mh_iterations
  doc: "Number of Metropolis-Hastings iterations (default:\n5000)"
  type: long
  inputBinding:
    prefix: --mh-iterations
- id: in_random_seed
  doc: "Random seed for initializing MCMC sampler (default:\nNone)"
  type: string
  inputBinding:
    prefix: --random-seed
- id: in_tmp_dir
  doc: 'Path to directory for temporary files (default: None)'
  type: File
  inputBinding:
    prefix: --tmp-dir
- id: in_params
  doc: "JSON file listing run parameters, generated by the\nparser (default: None)\n"
  type: File
  inputBinding:
    prefix: --params
- id: in_ssm_file
  doc: "File listing SSMs (simple somatic mutations, i.e.,\nsingle nucleotide variants.\
    \ For proper format, see\nREADME.md."
  type: string
  inputBinding:
    position: 0
- id: in_cnv_file
  doc: "File listing CNVs (copy number variations). For proper\nformat, see README.md."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Path to output directory (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- evolve.py