version 1.0

task HcaDssGetBundlesCheckout {
  input {
    String? replica
    String? checkout_job_id
  }
  command <<<
    hca dss get-bundles-checkout \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(checkout_job_id) then ("--checkout-job-id " +  '"' + checkout_job_id + '"') else ""}
  >>>
  parameter_meta {
    replica: "Replica to fetch from."
    checkout_job_id: "A RFC4122-compliant ID for the checkout job request."
  }
}