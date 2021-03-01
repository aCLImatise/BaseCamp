version 1.0

task HcaDssGetbundlescheckout {
  input {
    String? replica
    Int? rfccompliant_id_checkout
    String use_route_returned
  }
  command <<<
    hca dss get_bundles_checkout \
      ~{use_route_returned} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(rfccompliant_id_checkout) then ("--checkout-job-id " +  '"' + rfccompliant_id_checkout + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    replica: "Replica to fetch from."
    rfccompliant_id_checkout: "A RFC4122-compliant ID for the checkout job request.\\n"
    use_route_returned: "Use this route with the `checkout_job_id` identifier returned by `POST /bundles/{uuid}/checkout`."
  }
  output {
    File out_stdout = stdout()
  }
}