version 1.0

task Cargo {
  input {
    Boolean? list
    String? explain
    Boolean? verbose
    Boolean? quiet
    String? color
    Boolean? frozen
    Boolean? locked
  }
  command <<<
    cargo \
      ~{if (list) then "--list" else ""} \
      ~{if defined(explain) then ("--explain " +  '"' + explain + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if (frozen) then "--frozen" else ""} \
      ~{if (locked) then "--locked" else ""}
  >>>
  parameter_meta {
    list: "List installed commands"
    explain: "Run `rustc --explain CODE`"
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