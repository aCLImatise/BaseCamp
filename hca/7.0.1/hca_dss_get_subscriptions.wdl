version 1.0

task HcaDssGetSubscriptions {
  input {
    String? replica
    String? subscription_type
  }
  command <<<
    hca dss get-subscriptions \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(subscription_type) then ("--subscription-type " +  '"' + subscription_type + '"') else ""}
  >>>
  parameter_meta {
    replica: "Replica to fetch from."
    subscription_type: "Type of subscriptions to fetch (elasticsearch or jmespath)."
  }
}