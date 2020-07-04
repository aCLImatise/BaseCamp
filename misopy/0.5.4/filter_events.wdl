version 1.0

task FilterEvents {
  input {
    Boolean? filter
    Boolean? control
    String? output_dir
    String? num_total
    String? num_inc
    String? num_exc
    String? num_sum_inc_exc
    String? delta_psi
    String? bayes_factor
    Boolean? apply_both
    String? votes
  }
  command <<<
    filter_events \
      ~{true="--filter" false="" filter} \
      ~{true="--control" false="" control} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(num_total) then ("--num-total " +  '"' + num_total + '"') else ""} \
      ~{if defined(num_inc) then ("--num-inc " +  '"' + num_inc + '"') else ""} \
      ~{if defined(num_exc) then ("--num-exc " +  '"' + num_exc + '"') else ""} \
      ~{if defined(num_sum_inc_exc) then ("--num-sum-inc-exc " +  '"' + num_sum_inc_exc + '"') else ""} \
      ~{if defined(delta_psi) then ("--delta-psi " +  '"' + delta_psi + '"') else ""} \
      ~{if defined(bayes_factor) then ("--bayes-factor " +  '"' + bayes_factor + '"') else ""} \
      ~{true="--apply-both" false="" apply_both} \
      ~{if defined(votes) then ("--votes " +  '"' + votes + '"') else ""}
  >>>
  parameter_meta {
    filter: "Comparison file to filter or list of replicate files to filter."
    control: "Control comparison file to filter."
    output_dir: "Output directory for filtered file."
    num_total: "Require at least N-many total reads (inclusion reads, exclusion reads or reads supporting both isoforms."
    num_inc: "Require at least N-many inclusion reads. Assumes that the first isoform (isoform 0) is the inclusion isoform."
    num_exc: "Require at least N-many exclusion reads"
    num_sum_inc_exc: "Require the sum of inclusion and exclusion reads to be at least N."
    delta_psi: "Require the absolute change in Psi (delta Psi) to be at least N. Only takes positive floats as arguments."
    bayes_factor: "Require the Bayes factor to be at least N."
    apply_both: "Apply filter to both samples."
    votes: "The number of biological replicates in a sample which must pass the   filters to call an event significant."
  }
}