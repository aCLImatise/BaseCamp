version 1.0

task GcloudKmsKeyrings {
  input {
    String? location
    String add_i_am_policy_binding
    String create
    String describe
    String get_i_am_policy
    String list
    String remove_i_am_policy_binding
    String set_i_am_policy
  }
  command <<<
    gcloud kms keyrings \
      ~{add_i_am_policy_binding} \
      ~{create} \
      ~{describe} \
      ~{get_i_am_policy} \
      ~{list} \
      ~{remove_i_am_policy_binding} \
      ~{set_i_am_policy} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""}
  >>>
  parameter_meta {
    location: "The location of the requested resource."
    add_i_am_policy_binding: "Add IAM policy binding to a keyring."
    create: "Create a new keyring."
    describe: "Get metadata for a keyring."
    get_i_am_policy: "Get the IAM policy for a keyring."
    list: "List keyrings within a location."
    remove_i_am_policy_binding: "Remove a policy binding from a keyring."
    set_i_am_policy: "Set the IAM policy for a keyring."
  }
  output {
    File out_stdout = stdout()
  }
}