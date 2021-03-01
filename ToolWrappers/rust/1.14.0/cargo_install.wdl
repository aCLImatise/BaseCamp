version 1.0

task CargoInstall {
  input {
    String? vers
    String? git
    String? branch
    String? tag
    String? rev
    File? path
    Int? jobs
    Boolean? force
    String? features
    Boolean? all_features
    Boolean? no_default_features
    Boolean? debug
    String? bin
    String? example
    Directory? root
    Boolean? verbose
    Boolean? quiet
    String? color
    Boolean? frozen
    Boolean? locked
  }
  command <<<
    cargo install \
      ~{if defined(vers) then ("--vers " +  '"' + vers + '"') else ""} \
      ~{if defined(git) then ("--git " +  '"' + git + '"') else ""} \
      ~{if defined(branch) then ("--branch " +  '"' + branch + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(rev) then ("--rev " +  '"' + rev + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if (all_features) then "--all-features" else ""} \
      ~{if (no_default_features) then "--no-default-features" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(bin) then ("--bin " +  '"' + bin + '"') else ""} \
      ~{if defined(example) then ("--example " +  '"' + example + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
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
    vers: "Specify a version to install from crates.io"
    git: "Git URL to install the specified crate from"
    branch: "Branch to use when installing from git"
    tag: "Tag to use when installing from git"
    rev: "Specific commit to use when installing from git"
    path: "Filesystem path to local crate to install"
    jobs: "Number of parallel jobs, defaults to # of CPUs"
    force: "Force overwriting existing crates or binaries"
    features: "Space-separated list of features to activate"
    all_features: "Build all available features"
    no_default_features: "Do not build the `default` feature"
    debug: "Build in debug mode instead of release mode"
    bin: "Only install the binary NAME"
    example: "Install the example EXAMPLE instead of binaries"
    root: "Directory to install packages into"
    verbose: "...         Use verbose output"
    quiet: "Less output printed to stdout"
    color: "Coloring: auto, always, never"
    frozen: "Require Cargo.lock and cache are up to date"
    locked: "Require Cargo.lock is up to date"
  }
  output {
    File out_stdout = stdout()
  }
}