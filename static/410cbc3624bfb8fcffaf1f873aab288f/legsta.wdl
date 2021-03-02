version 1.0

task Legsta {
  input {
    Boolean? quiet
    Boolean? debug
    Directory? db_dir
    Boolean? csv
    Boolean? noheader
  }
  command <<<
    legsta \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(db_dir) then ("--dbdir " +  '"' + db_dir + '"') else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (noheader) then "--noheader" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Don't print anything to stderr."
    debug: "+     Verbose debug output to stderr (default '0')."
    db_dir: "SBT database folder (default '/usr/local/db')."
    csv: "Output CSV instead of TSV (default '0')."
    noheader: "Don't print header row (default '0')."
  }
  output {
    File out_stdout = stdout()
  }
}