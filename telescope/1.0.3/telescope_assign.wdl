version 1.0

task TelescopeAssign {
  input {
    String? attribute
    String? no_feature_key
    String? n_cpu
    String? tempdir
    Boolean? quiet
    Boolean? debug
    String? log_file
    String? outdir
    String? exp_tag
    Boolean? updated_sam
    String? reassign_mode
    String? conf_prob
    String? overlap_mode
    String? overlap_threshold
    String? annotation_class
    String? pi_prior
    String? theta_prior
    String? em_epsilon
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
      ~{true="--quiet" false="" quiet} \
      ~{true="--debug" false="" debug} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(exp_tag) then ("--exp_tag " +  '"' + exp_tag + '"') else ""} \
      ~{true="--updated_sam" false="" updated_sam} \
      ~{if defined(reassign_mode) then ("--reassign_mode " +  '"' + reassign_mode + '"') else ""} \
      ~{if defined(conf_prob) then ("--conf_prob " +  '"' + conf_prob + '"') else ""} \
      ~{if defined(overlap_mode) then ("--overlap_mode " +  '"' + overlap_mode + '"') else ""} \
      ~{if defined(overlap_threshold) then ("--overlap_threshold " +  '"' + overlap_threshold + '"') else ""} \
      ~{if defined(annotation_class) then ("--annotation_class " +  '"' + annotation_class + '"') else ""} \
      ~{if defined(pi_prior) then ("--pi_prior " +  '"' + pi_prior + '"') else ""} \
      ~{if defined(theta_prior) then ("--theta_prior " +  '"' + theta_prior + '"') else ""} \
      ~{if defined(em_epsilon) then ("--em_epsilon " +  '"' + em_epsilon + '"') else ""} \
      ~{if defined(max_iter) then ("--max_iter " +  '"' + max_iter + '"') else ""} \
      ~{true="--use_likelihood" false="" use_likelihood} \
      ~{true="--skip_em" false="" skip_em}
  >>>
  parameter_meta {
    attribute: "GTF attribute that defines a transposable element locus. GTF features that share the same value for --attribute will be considered as part of the same locus. (default: locus)"
    no_feature_key: "Used internally to represent alignments. Must be different from all other feature names. (default: __no_feature)"
    n_cpu: "Number of cores to use. (Multiple cores not supported yet). (default: 1)"
    tempdir: "Path to temporary directory. Temporary files will be stored here. Default uses python tempfile package to create the temporary directory. (default: None)"
    quiet: "Silence (most) output. (default: False)"
    debug: "Print debug messages. (default: False)"
    log_file: "Log output to this file. (default: None)"
    outdir: "Output directory. (default: .)"
    exp_tag: "Experiment tag (default: telescope)"
    updated_sam: "Generate an updated alignment file. (default: False)"
    reassign_mode: "Reassignment mode. After EM is complete, each fragment is reassigned according to the expected value of its membership weights. The reassignment method is the method for resolving the \"best\" reassignment for fragments that have multiple possible reassignments. Available modes are: \"exclude\" - fragments with multiple best assignments are excluded from the final counts; \"choose\" - the best assignment is randomly chosen from among the set of best assignments; \"average\" - the fragment is divided evenly among the best assignments; \"conf\" - only assignments that exceed a certain threshold (see --conf_prob) are accepted; \"unique\" - only uniquely aligned reads are included. NOTE: Results using all assignment modes are included in the Telescope report by default. This argument determines what mode will be used for the \"final counts\" column. (default: exclude)"
    conf_prob: "Minimum probability for high confidence assignment. (default: 0.9)"
    overlap_mode: "Overlap mode. The method used to determine whether a fragment overlaps feature. (default: threshold)"
    overlap_threshold: "Fraction of fragment that must be contained within a feature to be assigned to that locus. Ignored if --overlap_method is not \"threshold\". (default: 0.2)"
    annotation_class: "Annotation class to use for finding overlaps. Both htseq and intervaltree appear to yield identical results. Performance differences are TBD. (default: intervaltree)"
    pi_prior: "Prior on π. Equivalent to adding n unique reads. (default: 0)"
    theta_prior: "Prior on θ. Equivalent to adding n non-unique reads. NOTE: It is recommended to set this prior to a large value. This increases the penalty for non-unique reads and improves accuracy. (default: 200000)"
    em_epsilon: "EM Algorithm Epsilon cutoff (default: 1e-7)"
    max_iter: "EM Algorithm maximum iterations (default: 100)"
    use_likelihood: "Use difference in log-likelihood as convergence criteria. (default: False)"
    skip_em: "Exits after loading alignment and saving checkpoint file. (default: False)"
    sam_file: "Path to alignment file. Alignment file can be in SAM or BAM format. File must be collated so that all alignments for a read pair appear sequentially in the file."
    gtf_file: "Path to annotation file (GTF format)"
  }
}