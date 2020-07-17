version 1.0

task OmeroUserInfo {
  input {
    String? style
    Boolean? long
    Boolean? count
    Boolean? sort_by_id
    Boolean? sort_by_login
    Boolean? sort_by_first_name
    Boolean? sort_by_last_name
    Boolean? sort_by_email
    Array[String] user_id
    Array[String] user_name
    String user
  }
  command <<<
    omero user info \
      ~{user} \
      ~{if defined(style) then ("--style " +  '"' + style + '"') else ""} \
      ~{true="--long" false="" long} \
      ~{true="--count" false="" count} \
      ~{true="--sort-by-id" false="" sort_by_id} \
      ~{true="--sort-by-login" false="" sort_by_login} \
      ~{true="--sort-by-first-name" false="" sort_by_first_name} \
      ~{true="--sort-by-last-name" false="" sort_by_last_name} \
      ~{true="--sort-by-email" false="" sort_by_email} \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(user_name) then ("--user-name " +  '"' + user_name + '"') else ""}
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
    user_id: "ID of the user(s)"
    user_name: "Name of the user(s)"
    user: "ID or name of the user(s)"
  }
}