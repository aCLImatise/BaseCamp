version 1.0

task HcaDssGetSubscription {
  input {
    String? uuid
    String? replica
    String? subscription_type
  }
  command <<<
    hca dss get-subscription \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(subscription_type) then ("--subscription-type " +  '"' + subscription_type + '"') else ""}
  >>>
  parameter_meta {
    uuid: "A RFC4122-compliant ID for the subscription."
    replica: "Replica to fetch from."
    subscription_type: "type of subscriptions to fetch (elasticsearch or jmespath)"
  }
}