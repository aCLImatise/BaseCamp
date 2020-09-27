version 1.0

task CargoDoc {
  input {
    Boolean? open
    String? package
    Boolean? no_deps
    Int? jobs
    Boolean? lib
    String? bin
    Boolean? release
    String? features
    Boolean? all_features
    Boolean? no_default_features
    String? target
    File? manifest_path
    Boolean? verbose
    Boolean? quiet
    String? color
    String? message_format
    Boolean? frozen
    Boolean? locked
    String cargo
  }
  command <<<
    cargo doc \
      ~{cargo} \
      ~{if (open) then "--open" else ""} \
      ~{if defined(package) then ("--package " +  '"' + package + '"') else ""} \
      ~{if (no_deps) then "--no-deps" else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if (lib) then "--lib" else ""} \
      ~{if defined(bin) then ("--bin " +  '"' + bin + '"') else ""} \
      ~{if (release) then "--release" else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if (all_features) then "--all-features" else ""} \
      ~{if (no_default_features) then "--no-default-features" else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(manifest_path) then ("--manifest-path " +  '"' + manifest_path + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if defined(message_format) then ("--message-format " +  '"' + message_format + '"') else ""} \
      ~{if (frozen) then "--frozen" else ""} \
      ~{if (locked) then "--locked" else ""}
  >>>
  parameter_meta {
    open: "Opens the docs in a browser after the operation"
    package: "to document"
    no_deps: "Don't build documentation for dependencies"
    jobs: "Number of parallel jobs, defaults to # of CPUs"
    lib: "Document only this package's library"
    bin: "Document only the specified binary"
    release: "Build artifacts in release mode, with optimizations"
    features: "Space-separated list of features to also build"
    all_features: "Build all available features"
    no_default_features: "Do not build the `default` feature"
    target: "Build for the target triple"
    manifest_path: "Path to the manifest to document"
    verbose: "...            Use verbose output"
    quiet: "No output printed to stdout"
    color: "Coloring: auto, always, never"
    message_format: "Error format: human, json [default: human]"
    frozen: "Require Cargo.lock and cache are up to date"
    locked: "Require Cargo.lock is up to date"
    cargo: ""
  }
  output {
    File out_stdout = stdout()
  }
}