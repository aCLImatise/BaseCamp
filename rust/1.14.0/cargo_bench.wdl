version 1.0

task CargoBench {
  input {
    Boolean? lib
    String? bin
    String? example
    String? test
    String? bench
    Boolean? no_run
    String? package
    Int? jobs
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
  }
  command <<<
    cargo bench \
      ~{if (lib) then "--lib" else ""} \
      ~{if defined(bin) then ("--bin " +  '"' + bin + '"') else ""} \
      ~{if defined(example) then ("--example " +  '"' + example + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if defined(bench) then ("--bench " +  '"' + bench + '"') else ""} \
      ~{if (no_run) then "--no-run" else ""} \
      ~{if defined(package) then ("--package " +  '"' + package + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
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
    lib: "Benchmark only this package's library"
    bin: "Benchmark only the specified binary"
    example: "Benchmark only the specified example"
    test: "Benchmark only the specified test target"
    bench: "Benchmark only the specified bench target"
    no_run: "Compile, but don't run benchmarks"
    package: "to run benchmarks for"
    jobs: "Number of parallel jobs, defaults to # of CPUs"
    features: "Space-separated list of features to also build"
    all_features: "Build all available features"
    no_default_features: "Do not build the `default` feature"
    target: "Build for the target triple"
    manifest_path: "Path to the manifest to build benchmarks for"
    verbose: "...            Use verbose output"
    quiet: "No output printed to stdout"
    color: "Coloring: auto, always, never"
    message_format: "Error format: human, json [default: human]"
    frozen: "Require Cargo.lock and cache are up to date"
    locked: "Require Cargo.lock is up to date"
  }
  output {
    File out_stdout = stdout()
  }
}