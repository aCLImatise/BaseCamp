version 1.0

task BpSeqfeatureDelete.pl {
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
    bp_seqfeature_delete.pl \
      ~{true="--dsn" false="" dsn} \
      ~{true="--adaptor" false="" adaptor} \
      ~{true="--name" false="" name} \
      ~{true="--type" false="" type} \
      ~{true="--id" false="" id} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--noverbose" false="" no_verbose} \
      ~{true="--dryrun" false="" dry_run} \
      ~{true="--user" false="" user} \
      ~{true="--password" false="" password} \
      ~{true="--fast" false="" fast}
  >>>
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
}