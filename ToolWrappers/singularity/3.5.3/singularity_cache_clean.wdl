version 1.0

task SingularityCacheClean {
  input {
    String? name
    Boolean? dry_run
    Boolean? force
    String? type
    String? clean
  }
  command <<<
    singularity cache clean \
      ~{clean} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: "specify a container cache to clean (will clear all\\ncache with the same name)"
    dry_run: "operate in dry run mode and do not actually clean\\nthe cache"
    force: "suppress any prompts and clean the cache"
    type: "a list of cache types to clean (possible values:\\nlibrary, oci, shub, blob, net, oras, all) (default\\n[all])"
    clean: ""
  }
  output {
    File out_stdout = stdout()
  }
}