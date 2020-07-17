version 1.0

task OmeroGroupInfo {
  input {
    String? style
    Boolean? count
    Boolean? long
    Boolean? sort_by_id
    Boolean? sort_by_name
    Array[String] group_id
    Array[String] group_name
    String group
  }
  command <<<
    omero group info \
      ~{group} \
      ~{if defined(style) then ("--style " +  '"' + style + '"') else ""} \
      ~{true="--count" false="" count} \
      ~{true="--long" false="" long} \
      ~{true="--sort-by-id" false="" sort_by_id} \
      ~{true="--sort-by-name" false="" sort_by_name} \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""} \
      ~{if defined(group_name) then ("--group-name " +  '"' + group_name + '"') else ""}
  >>>
  parameter_meta {
    style: "use alternative output style (default=sql)"
    count: "Print count of all users and owners (default)"
    long: "Print comma-separated list of all users and owners"
    sort_by_id: "Sort groups by ID (default)"
    sort_by_name: "Sort groups by name"
    group_id: "ID  of the group(s)"
    group_name: "Name of the group(s)"
    group: "ID or name of the group(s)"
  }
}