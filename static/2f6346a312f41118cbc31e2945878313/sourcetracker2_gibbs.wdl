version 1.0

task Sourcetracker2Gibbs {
  input {
    File? table_fp
    File? mapping_fp
    File? output_dir
    Boolean? loo
    Int? jobs
    Float? alpha_one
    Float? alpha_two
    Int? beta
    Int? source_rarefaction_depth
    Int? sink_rarefaction_depth
    Int? restarts
    Int? draws_per_restart
    Int? burnin
    Int? delay
    Int? cluster_start_delay
    String? source_sink_column
    String? source_column_value
    String? sink_column_value
    String? source_category_column
  }
  command <<<
    sourcetracker2 gibbs \
      ~{if defined(table_fp) then ("--table_fp " +  '"' + table_fp + '"') else ""} \
      ~{if defined(mapping_fp) then ("--mapping_fp " +  '"' + mapping_fp + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (loo) then "--loo" else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(alpha_one) then ("--alpha1 " +  '"' + alpha_one + '"') else ""} \
      ~{if defined(alpha_two) then ("--alpha2 " +  '"' + alpha_two + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(source_rarefaction_depth) then ("--source_rarefaction_depth " +  '"' + source_rarefaction_depth + '"') else ""} \
      ~{if defined(sink_rarefaction_depth) then ("--sink_rarefaction_depth " +  '"' + sink_rarefaction_depth + '"') else ""} \
      ~{if defined(restarts) then ("--restarts " +  '"' + restarts + '"') else ""} \
      ~{if defined(draws_per_restart) then ("--draws_per_restart " +  '"' + draws_per_restart + '"') else ""} \
      ~{if defined(burnin) then ("--burnin " +  '"' + burnin + '"') else ""} \
      ~{if defined(delay) then ("--delay " +  '"' + delay + '"') else ""} \
      ~{if defined(cluster_start_delay) then ("--cluster_start_delay " +  '"' + cluster_start_delay + '"') else ""} \
      ~{if defined(source_sink_column) then ("--source_sink_column " +  '"' + source_sink_column + '"') else ""} \
      ~{if defined(source_column_value) then ("--source_column_value " +  '"' + source_column_value + '"') else ""} \
      ~{if defined(sink_column_value) then ("--sink_column_value " +  '"' + sink_column_value + '"') else ""} \
      ~{if defined(source_category_column) then ("--source_category_column " +  '"' + source_category_column + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    table_fp: "Path to input BIOM table.  [required]"
    mapping_fp: "Path to sample metadata mapping file.\\n[required]"
    output_dir: "Path to the output directory to be created.\\n[required]"
    loo: "Classify each sample in `sources` using a\\nleave-one-out strategy. Replicates -s option\\nin Knights et al. sourcetracker.  [default:\\nFalse]"
    jobs: "Number of processes to launch.  [default: 1]"
    alpha_one: "Prior counts of each species in the training\\nenvironments. Higher values decrease the\\ntrust in the training environments, and make\\nthe source environment distrubitons over\\ntaxa smoother. By default, this is set to\\n0.001, which indicates reasonably high trust\\nin all source environments, even those with\\nfew training sequences. This is useful when\\nonly a small number of biological samples\\nare available from a source environment. A\\nmore conservative value would be 0.01.\\n[default: 0.001]"
    alpha_two: "Prior counts of each species in Unknown\\nenvironment. Higher values make the Unknown\\nenvironment smoother and less prone to\\noverfitting given a training sample.\\n[default: 0.001]"
    beta: "Count to be added to each species in each\\nenvironment, including `unknown`.  [default:\\n10]"
    source_rarefaction_depth: "Depth at which to rarify sources. If 0, no\\nrarefaction performed.  [default: 1000]"
    sink_rarefaction_depth: "Depth at which to rarify sinks. If 0, no\\nrarefaction performed.  [default: 1000]"
    restarts: "Number of independent Markov chains to grow.\\n`draws_per_restart` * `restarts` gives the\\nnumber of samplings of the mixing\\nproportions that will be generated.\\n[default: 10]"
    draws_per_restart: "Number of times to sample the state of the\\nMarkov chain for each independent chain\\ngrown.  [default: 1]"
    burnin: "Number of passes (withdarawal and\\nreassignment of every sequence in the sink)\\nthat will be made before a sample (draw)\\nwill be taken. Higher values allow more\\nconvergence towards the true distribtion\\nbefore draws are taken.  [default: 100]"
    delay: "Number passes between each sampling (draw)\\nof the Markov chain. Once the burnin passes\\nhave been made, a sample will be taken every\\n`delay` number of passes. This is also known\\nas `thinning`. Thinning helps reduce the\\nimpact of correlation between adjacent\\nstates of the Markov chain.  [default: 10]"
    cluster_start_delay: "When using multiple jobs, the script has to\\nstart an `ipcluster`. If ipcluster does not\\nrecognize that it has been successfully\\nstarted, the jobs will not be successfully\\nlaunched. If this is happening, increase\\nthis parameter.  [default: 25]"
    source_sink_column: "Sample metadata column indicating which\\nsamples should be treated as sources and\\nwhich as sinks.  [default: SourceSink]"
    source_column_value: "Value in source_sink_column indicating which\\nsamples should be treated as sources.\\n[default: source]"
    sink_column_value: "Value in source_sink_column indicating which\\nsamples should be treated as sinks.\\n[default: sink]"
    source_category_column: "Sample metadata column indicating the type\\nof each source sample.  [default: Env]"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}