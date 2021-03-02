version 1.0

task HcaDssPostbundlescheckout {
  input {
    String? destination
    String? email
    Int? uuid
    String? replica
  }
  command <<<
    hca dss post_bundles_checkout \
      ~{if defined(destination) then ("--destination " +  '"' + destination + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    destination: "User-owned destination storage bucket."
    email: "An email address to send status updates to."
    uuid: "A RFC4122-compliant ID for the bundle."
    replica: "Replica to fetch from."
  }
  output {
    File out_stdout = stdout()
  }
}