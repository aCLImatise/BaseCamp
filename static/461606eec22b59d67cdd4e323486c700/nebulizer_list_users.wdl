version 1.0

task NebulizerListUsers {
  input {
    String? name
    Boolean? long
    String galaxy
  }
  command <<<
    nebulizer list_users \
      ~{galaxy} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--long" false="" long}
  >>>
  parameter_meta {
    name: "list only users with matching email or user name. Can include glob-style wild-cards."
    long: "use a long listing format that includes ids, disk usage and admin status."
    galaxy: ""
  }
}