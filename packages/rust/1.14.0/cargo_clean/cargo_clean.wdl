version 1.0

task CargoClean {
  input {
    String? package
    File? manifest_path
    String? target
    Boolean? release
    Boolean? verbose
    Boolean? quiet
    String? color
    Boolean? frozen
    Boolean? locked
    String cargo
  }
  command <<<
    cargo clean \
      ~{cargo} \
      ~{if defined(package) then ("--package " +  '"' + package + '"') else ""} \
      ~{if defined(manifest_path) then ("--manifest-path " +  '"' + manifest_path + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if (release) then "--release" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if (frozen) then "--frozen" else ""} \
      ~{if (locked) then "--locked" else ""}
  >>>
  parameter_meta {
    package: "to clean artifacts for"
    manifest_path: "Path to the manifest to the package to clean"
    target: "Target triple to clean output for (default all)"
    release: "Whether or not to clean release artifacts"
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