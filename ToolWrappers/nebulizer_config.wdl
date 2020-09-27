version 1.0

task NebulizerConfig {
  input {
    String? name
    String galaxy
  }
  command <<<
    nebulizer config \
      ~{galaxy} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    name: "only show configuration items that match NAME. Can include\\nglob-style wild-cards."
    galaxy: ""
  }
  output {
    File out_stdout = stdout()
  }
}