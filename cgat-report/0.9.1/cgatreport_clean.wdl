version 1.0

task CgatreportClean {
  input {
    String? verbose
    String? section
    File? path
    String? build
    Boolean? dry_run
    String python
  }
  command <<<
    cgatreport-clean \
      ~{python} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(build) then ("--build " +  '"' + build + '"') else ""} \
      ~{true="--dry-run" false="" dry_run}
  >>>
  parameter_meta {
    verbose: "loglevel. The higher, the more output [default=2]"
    section: "only clean from certain sections [default=[]]"
    path: "path to rst source [default=.]"
    build: "path to build dir [default=.]"
    dry_run: "only show what is about to be deleted, but do not delete [default=False]"
    python: ""
  }
}