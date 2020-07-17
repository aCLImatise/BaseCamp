version 1.0

task DepEnsure {
  input {
    Boolean? add
    Boolean? dry_run
    Boolean? examples
    Boolean? no_vendor
    Boolean? update
    Boolean? enable_verbose_logging
    Boolean? vendor_only
  }
  command <<<
    dep ensure \
      ~{true="-add" false="" add} \
      ~{true="-dry-run" false="" dry_run} \
      ~{true="-examples" false="" examples} \
      ~{true="-no-vendor" false="" no_vendor} \
      ~{true="-update" false="" update} \
      ~{true="-v" false="" enable_verbose_logging} \
      ~{true="-vendor-only" false="" vendor_only}
  >>>
  parameter_meta {
    add: "add new dependencies, or populate Gopkg.toml with constraints for existing dependencies (default: false)"
    dry_run: "only report the changes that would be made (default: false)"
    examples: "print detailed usage examples (default: false)"
    no_vendor: "update Gopkg.lock (if needed), but do not update vendor/ (default: false)"
    update: "update the named dependencies (or all, if none are named) in Gopkg.lock to the latest allowed by Gopkg.toml (default: false)"
    enable_verbose_logging: "enable verbose logging (default: false)"
    vendor_only: "populate vendor/ from Gopkg.lock without updating it first (default: false)"
  }
}