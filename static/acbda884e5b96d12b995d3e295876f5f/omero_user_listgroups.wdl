version 1.0

task OmeroUserListgroups {
  input {
    String? style
    Boolean? count
    Boolean? long
    Boolean? sort_by_id
    Boolean? sort_by_name
    Array[String] user_id
    Array[String] user_name
    String user
  }
  command <<<
    omero user listgroups \
      ~{user} \
      ~{if defined(style) then ("--style " +  '"' + style + '"') else ""} \
      ~{true="--count" false="" count} \
      ~{true="--long" false="" long} \
      ~{true="--sort-by-id" false="" sort_by_id} \
      ~{true="--sort-by-name" false="" sort_by_name} \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(user_name) then ("--user-name " +  '"' + user_name + '"') else ""}
  >>>
  parameter_meta {
    style: "use alternative output style (default=sql)"
    count: "Print count of all users and owners (default)"
    long: "Print comma-separated list of all users and owners"
    sort_by_id: "Sort groups by ID (default)"
    sort_by_name: "Sort groups by name"
    user_id: "ID of the user(s)"
    user_name: "Name of the user(s)"
    user: "ID or name of the user(s)"
  }
}