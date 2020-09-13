version 1.0

task TelescopeAssign {
  input {
    String? attribute
    String? no_feature_key
    Int? n_cpu
    File? tempdir
    Boolean? quiet
    Boolean? debug
    File? log_file
    Directory? outdir
    String? exp_tag
    Boolean? updated_sam
    String? reassign_mode
    Float? conf_prob
    String? overlap_mode
    Float? overlap_threshold
    String? annotation_class
    Int? pi_prior
    Int? theta_prior
    Float? em_epsilon
    Int? max_iter
    Boolean? use_likelihood
    Boolean? skip_em
    String sam_file
    String gtf_file
  }
  command <<<
    telescope assign \
      ~{sam_file} \
      ~{gtf_file} \
      ~{if defined(attribute) then ("--attribute " +  '"' + attribute + '"') else ""} \
      ~{if defined(no_feature_key) then ("--no_feature_key " +  '"' + no_feature_key + '"') else ""} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(exp_tag) then ("--exp_tag " +  '"' + exp_tag + '"') else ""} \
      ~{if (updated_sam) then "--updated_sam" else ""} \
      ~{if defined(reassign_mode) then ("--reassign_mode " +  '"' + reassign_mode + '"') else ""} \
      ~{if defined(conf_prob) then ("--conf_prob " +  '"' + conf_prob + '"') else ""} \
      ~{if defined(overlap_mode) then ("--overlap_mode " +  '"' + overlap_mode + '"') else ""} \
      ~{if defined(overlap_threshold) then ("--overlap_threshold " +  '"' + overlap_threshold + '"') else ""} \
      ~{if defined(annotation_class) then ("--annotation_class " +  '"' + annotation_class + '"') else ""} \
      ~{if defined(pi_prior) then ("--pi_prior " +  '"' + pi_prior + '"') else ""} \
      ~{if defined(theta_prior) then ("--theta_prior " +  '"' + theta_prior + '"') else ""} \
      ~{if defined(em_epsilon) then ("--em_epsilon " +  '"' + em_epsilon + '"') else ""} \
      ~{if defined(max_iter) then ("--max_iter " +  '"' + max_iter + '"') else ""} \
      ~{if (use_likelihood) then "--use_likelihood" else ""} \
      ~{if (skip_em) then "--skip_em" else ""}
  >>>
  parameter_meta {
    attribute: "GTF attribute that defines a transposable element\\nlocus. GTF features that share the same value for\\n--attribute will be considered as part of the same\\nlocus. (default: locus)"
    no_feature_key: "Used internally to represent alignments. Must be\\ndifferent from all other feature names. (default:\\n__no_feature)"
    n_cpu: "Number of cores to use. (Multiple cores not supported\\nyet). (default: 1)"
    tempdir: "Path to temporary directory. Temporary files will be\\nstored here. Default uses python tempfile package to\\ncreate the temporary directory. (default: None)"
    quiet: "Silence (most) output. (default: False)"
    debug: "Print debug messages. (default: False)"
    log_file: "Log output to this file. (default: None)"
    outdir: "Output directory. (default: .)"
    exp_tag: "Experiment tag (default: telescope)"
    updated_sam: "Generate an updated alignment file. (default: False)"
    reassign_mode: "Reassignment mode. After EM is complete, each fragment\\nis reassigned according to the expected value of its\\nmembership weights. The reassignment method is the\\nmethod for resolving the \\\"best\\\" reassignment for\\nfragments that have multiple possible reassignments.\\nAvailable modes are: \\\"exclude\\\" - fragments with\\nmultiple best assignments are excluded from the final\\ncounts; \\\"choose\\\" - the best assignment is randomly\\nchosen from among the set of best assignments;\\n\\\"average\\\" - the fragment is divided evenly among the\\nbest assignments; \\\"conf\\\" - only assignments that\\nexceed a certain threshold (see --conf_prob) are\\naccepted; \\\"unique\\\" - only uniquely aligned reads are\\nincluded. NOTE: Results using all assignment modes are\\nincluded in the Telescope report by default. This\\nargument determines what mode will be used for the\\n\\\"final counts\\\" column. (default: exclude)"
    conf_prob: "Minimum probability for high confidence assignment.\\n(default: 0.9)"
    overlap_mode: "Overlap mode. The method used to determine whether a\\nfragment overlaps feature. (default: threshold)"
    overlap_threshold: "Fraction of fragment that must be contained within a\\nfeature to be assigned to that locus. Ignored if\\n--overlap_method is not \\\"threshold\\\". (default: 0.2)"
    annotation_class: "Annotation class to use for finding overlaps. Both\\nhtseq and intervaltree appear to yield identical\\nresults. Performance differences are TBD. (default:\\nintervaltree)"
    pi_prior: "Prior on π. Equivalent to adding n unique reads.\\n(default: 0)"
    theta_prior: "Prior on θ. Equivalent to adding n non-unique reads.\\nNOTE: It is recommended to set this prior to a large\\nvalue. This increases the penalty for non-unique reads\\nand improves accuracy. (default: 200000)"
    em_epsilon: "EM Algorithm Epsilon cutoff (default: 1e-7)"
    max_iter: "EM Algorithm maximum iterations (default: 100)"
    use_likelihood: "Use difference in log-likelihood as convergence\\ncriteria. (default: False)"
    skip_em: "Exits after loading alignment and saving checkpoint\\nfile. (default: False)\\n"
    sam_file: "Path to alignment file. Alignment file can be in SAM\\nor BAM format. File must be collated so that all\\nalignments for a read pair appear sequentially in the\\nfile."
    gtf_file: "Path to annotation file (GTF format)"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
    Directory out_outdir = "${in_outdir}"
  }
}