version 1.0

task TelescopeResume {
  input {
    Boolean? quiet
    Boolean? debug
    String? log_file
    String? outdir
    String? exp_tag
    String? reassign_mode
    String? conf_prob
    String? pi_prior
    String? theta_prior
    String? em_epsilon
    Int? max_iter
    Boolean? use_likelihood
    String checkpoint
  }
  command <<<
    telescope resume \
      ~{checkpoint} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--debug" false="" debug} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(exp_tag) then ("--exp_tag " +  '"' + exp_tag + '"') else ""} \
      ~{if defined(reassign_mode) then ("--reassign_mode " +  '"' + reassign_mode + '"') else ""} \
      ~{if defined(conf_prob) then ("--conf_prob " +  '"' + conf_prob + '"') else ""} \
      ~{if defined(pi_prior) then ("--pi_prior " +  '"' + pi_prior + '"') else ""} \
      ~{if defined(theta_prior) then ("--theta_prior " +  '"' + theta_prior + '"') else ""} \
      ~{if defined(em_epsilon) then ("--em_epsilon " +  '"' + em_epsilon + '"') else ""} \
      ~{if defined(max_iter) then ("--max_iter " +  '"' + max_iter + '"') else ""} \
      ~{true="--use_likelihood" false="" use_likelihood}
  >>>
  parameter_meta {
    quiet: "Silence (most) output. (default: False)"
    debug: "Print debug messages. (default: False)"
    log_file: "Log output to this file. (default: None)"
    outdir: "Output directory. (default: .)"
    exp_tag: "Experiment tag (default: telescope)"
    reassign_mode: "Reassignment mode. After EM is complete, each fragment is reassigned according to the expected value of its membership weights. The reassignment method is the method for resolving the \"best\" reassignment for fragments that have multiple possible reassignments. Available modes are: \"exclude\" - fragments with multiple best assignments are excluded from the final counts; \"choose\" - the best assignment is randomly chosen from among the set of best assignments; \"average\" - the fragment is divided evenly among the best assignments; \"conf\" - only assignments that exceed a certain threshold (see --conf_prob) are accepted; \"unique\" - only uniquely aligned reads are included. NOTE: Results using all assignment modes are included in the Telescope report by default. This argument determines what mode will be used for the \"final counts\" column. (default: exclude)"
    conf_prob: "Minimum probability for high confidence assignment. (default: 0.9)"
    pi_prior: "Prior on π. Equivalent to adding n unique reads. (default: 0)"
    theta_prior: "Prior on θ. Equivalent to adding n non-unique reads. NOTE: It is recommended to set this prior to a large value. This increases the penalty for non-unique reads and improves accuracy. (default: 200000)"
    em_epsilon: "EM Algorithm Epsilon cutoff (default: 1e-7)"
    max_iter: "EM Algorithm maximum iterations (default: 100)"
    use_likelihood: "Use difference in log-likelihood as convergence criteria. (default: False)"
    checkpoint: "Path to checkpoint file."
  }
}