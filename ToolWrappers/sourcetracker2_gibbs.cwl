class: CommandLineTool
id: sourcetracker2_gibbs.cwl
inputs:
- id: in_table_fp
  doc: Path to input BIOM table.  [required]
  type: File
  inputBinding:
    prefix: --table_fp
- id: in_mapping_fp
  doc: "Path to sample metadata mapping file.\n[required]"
  type: File
  inputBinding:
    prefix: --mapping_fp
- id: in_output_dir
  doc: "Path to the output directory to be created.\n[required]"
  type: File
  inputBinding:
    prefix: --output_dir
- id: in_loo
  doc: "Classify each sample in `sources` using a\nleave-one-out strategy. Replicates\
    \ -s option\nin Knights et al. sourcetracker.  [default:\nFalse]"
  type: boolean
  inputBinding:
    prefix: --loo
- id: in_jobs
  doc: 'Number of processes to launch.  [default: 1]'
  type: long
  inputBinding:
    prefix: --jobs
- id: in_alpha_one
  doc: "Prior counts of each species in the training\nenvironments. Higher values\
    \ decrease the\ntrust in the training environments, and make\nthe source environment\
    \ distrubitons over\ntaxa smoother. By default, this is set to\n0.001, which indicates\
    \ reasonably high trust\nin all source environments, even those with\nfew training\
    \ sequences. This is useful when\nonly a small number of biological samples\n\
    are available from a source environment. A\nmore conservative value would be 0.01.\n\
    [default: 0.001]"
  type: double
  inputBinding:
    prefix: --alpha1
- id: in_alpha_two
  doc: "Prior counts of each species in Unknown\nenvironment. Higher values make the\
    \ Unknown\nenvironment smoother and less prone to\noverfitting given a training\
    \ sample.\n[default: 0.001]"
  type: double
  inputBinding:
    prefix: --alpha2
- id: in_beta
  doc: "Count to be added to each species in each\nenvironment, including `unknown`.\
    \  [default:\n10]"
  type: long
  inputBinding:
    prefix: --beta
- id: in_source_rarefaction_depth
  doc: "Depth at which to rarify sources. If 0, no\nrarefaction performed.  [default:\
    \ 1000]"
  type: long
  inputBinding:
    prefix: --source_rarefaction_depth
- id: in_sink_rarefaction_depth
  doc: "Depth at which to rarify sinks. If 0, no\nrarefaction performed.  [default:\
    \ 1000]"
  type: long
  inputBinding:
    prefix: --sink_rarefaction_depth
- id: in_restarts
  doc: "Number of independent Markov chains to grow.\n`draws_per_restart` * `restarts`\
    \ gives the\nnumber of samplings of the mixing\nproportions that will be generated.\n\
    [default: 10]"
  type: long
  inputBinding:
    prefix: --restarts
- id: in_draws_per_restart
  doc: "Number of times to sample the state of the\nMarkov chain for each independent\
    \ chain\ngrown.  [default: 1]"
  type: long
  inputBinding:
    prefix: --draws_per_restart
- id: in_burnin
  doc: "Number of passes (withdarawal and\nreassignment of every sequence in the sink)\n\
    that will be made before a sample (draw)\nwill be taken. Higher values allow more\n\
    convergence towards the true distribtion\nbefore draws are taken.  [default: 100]"
  type: long
  inputBinding:
    prefix: --burnin
- id: in_delay
  doc: "Number passes between each sampling (draw)\nof the Markov chain. Once the\
    \ burnin passes\nhave been made, a sample will be taken every\n`delay` number\
    \ of passes. This is also known\nas `thinning`. Thinning helps reduce the\nimpact\
    \ of correlation between adjacent\nstates of the Markov chain.  [default: 10]"
  type: long
  inputBinding:
    prefix: --delay
- id: in_cluster_start_delay
  doc: "When using multiple jobs, the script has to\nstart an `ipcluster`. If ipcluster\
    \ does not\nrecognize that it has been successfully\nstarted, the jobs will not\
    \ be successfully\nlaunched. If this is happening, increase\nthis parameter. \
    \ [default: 25]"
  type: long
  inputBinding:
    prefix: --cluster_start_delay
- id: in_source_sink_column
  doc: "Sample metadata column indicating which\nsamples should be treated as sources\
    \ and\nwhich as sinks.  [default: SourceSink]"
  type: string
  inputBinding:
    prefix: --source_sink_column
- id: in_source_column_value
  doc: "Value in source_sink_column indicating which\nsamples should be treated as\
    \ sources.\n[default: source]"
  type: string
  inputBinding:
    prefix: --source_column_value
- id: in_sink_column_value
  doc: "Value in source_sink_column indicating which\nsamples should be treated as\
    \ sinks.\n[default: sink]"
  type: string
  inputBinding:
    prefix: --sink_column_value
- id: in_source_category_column
  doc: "Sample metadata column indicating the type\nof each source sample.  [default:\
    \ Env]"
  type: string
  inputBinding:
    prefix: --source_category_column
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Path to the output directory to be created.\n[required]"
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- sourcetracker2
- gibbs
