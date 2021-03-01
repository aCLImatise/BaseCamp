version 1.0

task CargoUpdate {
  input {
    String? package
    Boolean? aggressive
    String? precise
    File? manifest_path
    Boolean? verbose
    Boolean? quiet
    String? color
    Boolean? frozen
    Boolean? locked
    String cargo
  }
  command <<<
    cargo update \
      ~{cargo} \
      ~{if defined(package) then ("--package " +  '"' + package + '"') else ""} \
      ~{if (aggressive) then "--aggressive" else ""} \
      ~{if defined(precise) then ("--precise " +  '"' + precise + '"') else ""} \
      ~{if defined(manifest_path) then ("--manifest-path " +  '"' + manifest_path + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if (frozen) then "--frozen" else ""} \
      ~{if (locked) then "--locked" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    package: "to update"
    aggressive: "Force updating all dependencies of <name> as well"
    precise: "Update a single dependency to exactly PRECISE"
    manifest_path: "Path to the crate's manifest"
    verbose: "...            Use verbose output"
    quiet: "No output printed to stdout"
    color: "Coloring: auto, always, never"
    frozen: "Require Cargo.lock and cache are up to date"
    locked: "Require Cargo.lock is up to date"
    cargo: ""
  }
  output {
    File out_stdout = stdout()
  }
}