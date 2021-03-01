version 1.0

task TelescopeResume {
  input {
    Boolean? quiet
    Boolean? debug
    File? log_file
    Directory? outdir
    String? exp_tag
    String? reassign_mode
    Float? conf_prob
    Int? pi_prior
    Int? theta_prior
    Float? em_epsilon
    Int? max_iter
    Boolean? use_likelihood
  }
  command <<<
    telescope resume \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(exp_tag) then ("--exp_tag " +  '"' + exp_tag + '"') else ""} \
      ~{if defined(reassign_mode) then ("--reassign_mode " +  '"' + reassign_mode + '"') else ""} \
      ~{if defined(conf_prob) then ("--conf_prob " +  '"' + conf_prob + '"') else ""} \
      ~{if defined(pi_prior) then ("--pi_prior " +  '"' + pi_prior + '"') else ""} \
      ~{if defined(theta_prior) then ("--theta_prior " +  '"' + theta_prior + '"') else ""} \
      ~{if defined(em_epsilon) then ("--em_epsilon " +  '"' + em_epsilon + '"') else ""} \
      ~{if defined(max_iter) then ("--max_iter " +  '"' + max_iter + '"') else ""} \
      ~{if (use_likelihood) then "--use_likelihood" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Silence (most) output. (default: False)"
    debug: "Print debug messages. (default: False)"
    log_file: "Log output to this file. (default: None)"
    outdir: "Output directory. (default: .)"
    exp_tag: "Experiment tag (default: telescope)"
    reassign_mode: "Reassignment mode. After EM is complete, each fragment\\nis reassigned according to the expected value of its\\nmembership weights. The reassignment method is the\\nmethod for resolving the \\\"best\\\" reassignment for\\nfragments that have multiple possible reassignments.\\nAvailable modes are: \\\"exclude\\\" - fragments with\\nmultiple best assignments are excluded from the final\\ncounts; \\\"choose\\\" - the best assignment is randomly\\nchosen from among the set of best assignments;\\n\\\"average\\\" - the fragment is divided evenly among the\\nbest assignments; \\\"conf\\\" - only assignments that\\nexceed a certain threshold (see --conf_prob) are\\naccepted; \\\"unique\\\" - only uniquely aligned reads are\\nincluded. NOTE: Results using all assignment modes are\\nincluded in the Telescope report by default. This\\nargument determines what mode will be used for the\\n\\\"final counts\\\" column. (default: exclude)"
    conf_prob: "Minimum probability for high confidence assignment.\\n(default: 0.9)"
    pi_prior: "Prior on π. Equivalent to adding n unique reads.\\n(default: 0)"
    theta_prior: "Prior on θ. Equivalent to adding n non-unique reads.\\nNOTE: It is recommended to set this prior to a large\\nvalue. This increases the penalty for non-unique reads\\nand improves accuracy. (default: 200000)"
    em_epsilon: "EM Algorithm Epsilon cutoff (default: 1e-7)"
    max_iter: "EM Algorithm maximum iterations (default: 100)"
    use_likelihood: "Use difference in log-likelihood as convergence\\ncriteria. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
    Directory out_outdir = "${in_outdir}"
  }
}