version 1.0

task Legsta {
  input {
    Boolean? quiet
    Boolean? debug
    String? db_dir
    Boolean? csv
    Boolean? noheader
  }
  command <<<
    legsta \
      ~{true="--quiet" false="" quiet} \
      ~{true="--debug" false="" debug} \
      ~{if defined(db_dir) then ("--dbdir " +  '"' + db_dir + '"') else ""} \
      ~{true="--csv" false="" csv} \
      ~{true="--noheader" false="" noheader}
  >>>
  parameter_meta {
    quiet: "Don't print anything to stderr."
    debug: "+     Verbose debug output to stderr (default '0')."
    db_dir: "SBT database folder (default '/tmp/tmp7aa9wtj1/db')."
    csv: "Output CSV instead of TSV (default '0')."
    noheader: "Don't print header row (default '0')."
  }
}