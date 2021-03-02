version 1.0

task HcaAuthPostv1policiesevaluate {
  input {
    String? principal
    Array[String] action
    Array[String] resource
  }
  command <<<
    hca auth post_v1_policies_evaluate \
      ~{if defined(principal) then ("--principal " +  '"' + principal + '"') else ""} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(resource) then ("--resource " +  '"' + resource + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    principal: "Attested user identifier."
    action: "The action the principal is attempting to perform."
    resource: "The resource the principal will perform the action against.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}