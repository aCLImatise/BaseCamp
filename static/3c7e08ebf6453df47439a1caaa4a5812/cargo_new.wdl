version 1.0

task CargoNew {
  input {
    String? vcs
    Boolean? bin
    Boolean? lib
    String? name
    Boolean? verbose
    Boolean? quiet
    String? color
    Boolean? frozen
    Boolean? locked
  }
  command <<<
    cargo new \
      ~{if defined(vcs) then ("--vcs " +  '"' + vcs + '"') else ""} \
      ~{if (bin) then "--bin" else ""} \
      ~{if (lib) then "--lib" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if (frozen) then "--frozen" else ""} \
      ~{if (locked) then "--locked" else ""}
  >>>
  parameter_meta {
    vcs: "Initialize a new repository for the given version\\ncontrol system (git or hg) or do not initialize any version\\ncontrol at all (none) overriding a global configuration."
    bin: "Use a binary (application) template"
    lib: "Use a library template"
    name: "Set the resulting package name"
    verbose: "...   Use verbose output"
    quiet: "No output printed to stdout"
    color: "Coloring: auto, always, never"
    frozen: "Require Cargo.lock and cache are up to date"
    locked: "Require Cargo.lock is up to date"
  }
  output {
    File out_stdout = stdout()
  }
}