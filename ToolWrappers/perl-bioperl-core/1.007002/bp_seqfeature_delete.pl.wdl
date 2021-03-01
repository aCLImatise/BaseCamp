version 1.0

task BpSeqfeatureDeletepl {
  input {
    Boolean? dsn
    Boolean? adaptor
    Boolean? name
    Boolean? type
    Boolean? id
    Boolean? verbose
    Boolean? no_verbose
    Boolean? dry_run
    Boolean? user
    Boolean? password
    Boolean? fast
  }
  command <<<
    bp_seqfeature_delete_pl \
      ~{if (dsn) then "--dsn" else ""} \
      ~{if (adaptor) then "--adaptor" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (type) then "--type" else ""} \
      ~{if (id) then "--id" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_verbose) then "--noverbose" else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if (password) then "--password" else ""} \
      ~{if (fast) then "--fast" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dsn: "The database name (dbi:mysql:test)"
    adaptor: "The storage adaptor to use (DBI::mysql)"
    name: "Delete features based on name or wildcard pattern (default)"
    type: "Delete features based on type"
    id: "Delete features based on primary id"
    verbose: "Turn on verbose progress reporting (default)"
    no_verbose: "Turn off verbose progress reporting"
    dry_run: "Dry run; report features to be deleted without actually deleting them"
    user: "User to connect to database as"
    password: "Password to use to connect to database"
    fast: "Deletes each item instantly not atomic for full dataset (mainly for deleting massive datasets linked to a type)"
  }
  output {
    File out_stdout = stdout()
  }
}