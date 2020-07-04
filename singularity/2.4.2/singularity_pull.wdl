version 1.0

task SingularityPull {
  input {
    Boolean? name
    String? commit
    Boolean? hash
    Boolean? force
    Boolean? size
    String singularity
  }
  command <<<
    singularity pull \
      ~{singularity} \
      ~{true="--name" false="" name} \
      ~{if defined(commit) then ("--commit " +  '"' + commit + '"') else ""} \
      ~{true="--hash" false="" hash} \
      ~{true="--force" false="" force} \
      ~{true="--size" false="" size}
  >>>
  parameter_meta {
    name: "Specify a custom container name (first priority)"
    commit: "container based on Github commit (second priority)"
    hash: "Name container based on file hash (second priority)"
    force: "overwrite an image file if it exists"
    size: "Specify a size for an operation in MiB, i.e. 1024*1024B (default 768MiB)"
    singularity: ""
  }
}