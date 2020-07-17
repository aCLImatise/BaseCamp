version 1.0

task OmeroGroupListusers {
  input {
    String? style
    Boolean? long
    Boolean? count
    Boolean? sort_by_id
    Boolean? sort_by_login
    Boolean? sort_by_first_name
    Boolean? sort_by_last_name
    Boolean? sort_by_email
    Array[String] group_id
    Array[String] group_name
    String group
  }
  command <<<
    omero group listusers \
      ~{group} \
      ~{if defined(style) then ("--style " +  '"' + style + '"') else ""} \
      ~{true="--long" false="" long} \
      ~{true="--count" false="" count} \
      ~{true="--sort-by-id" false="" sort_by_id} \
      ~{true="--sort-by-login" false="" sort_by_login} \
      ~{true="--sort-by-first-name" false="" sort_by_first_name} \
      ~{true="--sort-by-last-name" false="" sort_by_last_name} \
      ~{true="--sort-by-email" false="" sort_by_email} \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""} \
      ~{if defined(group_name) then ("--group-name " +  '"' + group_name + '"') else ""}
  >>>
  parameter_meta {
    style: "use alternative output style (default=sql)"
    long: "Print comma-separated list of all groups (default)"
    count: "Print count of all groups"
    sort_by_id: "Sort users by ID (default)"
    sort_by_login: "Sort users by login"
    sort_by_first_name: "Sort users by first name"
    sort_by_last_name: "Sort users by last name"
    sort_by_email: "Sort users by email"
    group_id: "ID  of the group(s)"
    group_name: "Name of the group(s)"
    group: "ID or name of the group(s)"
  }
}