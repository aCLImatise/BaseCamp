version 1.0

task CargoPublish {
  input {
    String? host
    String? token
    Boolean? no_verify
    Boolean? allow_dirty
    File? manifest_path
    Int? jobs
    Boolean? dry_run
    Boolean? verbose
    Boolean? quiet
    String? color
    Boolean? frozen
    Boolean? locked
    String cargo
  }
  command <<<
    cargo publish \
      ~{cargo} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if (no_verify) then "--no-verify" else ""} \
      ~{if (allow_dirty) then "--allow-dirty" else ""} \
      ~{if defined(manifest_path) then ("--manifest-path " +  '"' + manifest_path + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
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
    host: "Host to upload the package to"
    token: "Token to use when uploading"
    no_verify: "Don't verify package tarball before publish"
    allow_dirty: "Allow publishing with a dirty source directory"
    manifest_path: "Path to the manifest of the package to publish"
    jobs: "Number of parallel jobs, defaults to # of CPUs"
    dry_run: "Perform all checks without uploading"
    verbose: "...        Use verbose output"
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