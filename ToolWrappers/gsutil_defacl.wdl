version 1.0

task GsutilDefacl {
  input {
    Boolean? remove_roles_associated
    Boolean? normally_gsutil_stops
    Boolean? add_modify_group_role
    Boolean? add_modify_viewerseditorsowners_role
    Boolean? add_modify_user_role
    String description_dot
  }
  command <<<
    gsutil defacl \
      ~{description_dot} \
      ~{if (remove_roles_associated) then "-d" else ""} \
      ~{if (normally_gsutil_stops) then "-f" else ""} \
      ~{if (add_modify_group_role) then "-g" else ""} \
      ~{if (add_modify_viewerseditorsowners_role) then "-p" else ""} \
      ~{if (add_modify_user_role) then "-u" else ""}
  >>>
  parameter_meta {
    remove_roles_associated: "Remove all roles associated with the matching entity."
    normally_gsutil_stops: "Normally gsutil stops at the first error. The -f option causes\\nit to continue when it encounters errors. With this option the\\ngsutil exit status will be 0 even if some ACLs couldn't be\\nchanged."
    add_modify_group_role: "Add or modify a group entity's role."
    add_modify_viewerseditorsowners_role: "Add or modify a project viewers/editors/owners role."
    add_modify_user_role: "Add or modify a user entity's role."
    description_dot: "CH EXAMPLES"
  }
  output {
    File out_stdout = stdout()
  }
}