version 1.0

task HcaAuthPostV1PoliciesEvaluate {
  input {
    String? principal
    Array[String] action
    Array[String] resource
  }
  command <<<
    hca auth post-v1-policies-evaluate \
      ~{if defined(principal) then ("--principal " +  '"' + principal + '"') else ""} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(resource) then ("--resource " +  '"' + resource + '"') else ""}
  >>>
  parameter_meta {
    principal: "Attested user identifier."
    action: "The action the principal is attempting to perform."
    resource: "The resource the principal will perform the action against."
  }
}