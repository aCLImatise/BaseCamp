version 1.0

task FilterEvents {
  input {
    Boolean? filter
    Boolean? control
    File? output_dir
    Int? num_total
    Int? num_inc
    Int? num_exc
    Int? num_sum_inc_exc
    String? delta_psi
    String? bayes_factor
    Boolean? apply_both
    Int? votes
  }
  command <<<
    filter_events \
      ~{if (filter) then "--filter" else ""} \
      ~{if (control) then "--control" else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(num_total) then ("--num-total " +  '"' + num_total + '"') else ""} \
      ~{if defined(num_inc) then ("--num-inc " +  '"' + num_inc + '"') else ""} \
      ~{if defined(num_exc) then ("--num-exc " +  '"' + num_exc + '"') else ""} \
      ~{if defined(num_sum_inc_exc) then ("--num-sum-inc-exc " +  '"' + num_sum_inc_exc + '"') else ""} \
      ~{if defined(delta_psi) then ("--delta-psi " +  '"' + delta_psi + '"') else ""} \
      ~{if defined(bayes_factor) then ("--bayes-factor " +  '"' + bayes_factor + '"') else ""} \
      ~{if (apply_both) then "--apply-both" else ""} \
      ~{if defined(votes) then ("--votes " +  '"' + votes + '"') else ""}
  >>>
  parameter_meta {
    filter: "Comparison file to filter or list of replicate files\\nto filter."
    control: "Control comparison file to filter."
    output_dir: "Output directory for filtered file."
    num_total: "Require at least N-many total reads (inclusion reads,\\nexclusion reads or reads supporting both isoforms."
    num_inc: "Require at least N-many inclusion reads. Assumes that\\nthe first isoform (isoform 0) is the inclusion\\nisoform."
    num_exc: "Require at least N-many exclusion reads"
    num_sum_inc_exc: "Require the sum of inclusion and exclusion reads to be\\nat least N."
    delta_psi: "Require the absolute change in Psi (delta Psi) to be\\nat least N. Only takes positive floats as arguments."
    bayes_factor: "Require the Bayes factor to be at least N."
    apply_both: "Apply filter to both samples."
    votes: "The number of biological replicates in a sample which\\nmust pass the   filters to call an event significant.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}