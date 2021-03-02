version 1.0

task GcloudKmsKeys {
  input {
    String? keyring
    String? location
    String operations_dot
    String versions
    String add_i_am_policy_binding
    String create
    String describe
    String get_i_am_policy
    String list
    String remove_i_am_policy_binding
    String remove_rotation_schedule
    String set_i_am_policy
    String set_primary_version
    String set_rotation_schedule
  }
  command <<<
    gcloud kms keys \
      ~{operations_dot} \
      ~{versions} \
      ~{add_i_am_policy_binding} \
      ~{create} \
      ~{describe} \
      ~{get_i_am_policy} \
      ~{list} \
      ~{remove_i_am_policy_binding} \
      ~{remove_rotation_schedule} \
      ~{set_i_am_policy} \
      ~{set_primary_version} \
      ~{set_rotation_schedule} \
      ~{if defined(keyring) then ("--keyring " +  '"' + keyring + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    keyring: "The containing keyring."
    location: "The location of the requested resource."
    operations_dot: "FLAGS"
    versions: "Create and manage versions."
    add_i_am_policy_binding: "Add IAM policy binding to a key."
    create: "Create a new key."
    describe: "Get metadata for a given key."
    get_i_am_policy: "Get the IAM policy for a key."
    list: "List the keys within a keyring."
    remove_i_am_policy_binding: "Remove an IAM policy binding from a key."
    remove_rotation_schedule: "Remove the rotation schedule for a key."
    set_i_am_policy: "Set the IAM policy for a key."
    set_primary_version: "Set the primary version of a key."
    set_rotation_schedule: "Update the rotation schedule for a key."
  }
  output {
    File out_stdout = stdout()
  }
}