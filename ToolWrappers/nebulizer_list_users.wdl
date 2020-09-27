version 1.0

task NebulizerListUsers {
  input {
    String? name
    Boolean? long
    Boolean? show_id
    String galaxy
  }
  command <<<
    nebulizer list_users \
      ~{galaxy} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (long) then "--long" else ""} \
      ~{if (show_id) then "--show_id" else ""}
  >>>
  parameter_meta {
    name: "list only users with matching email or user name. Can include\\nglob-style wild-cards."
    long: "use a long listing format that includes ids, disk usage and\\nadmin status."
    show_id: "include internal Galaxy user ID."
    galaxy: ""
  }
  output {
    File out_stdout = stdout()
  }
}