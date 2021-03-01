version 1.0

task Abricate {
  input {
    Boolean? debug
    Boolean? quiet
    Boolean? check
    Boolean? threads
    Boolean? fof_n
    Boolean? setup_db
    Boolean? list
    Boolean? datadir
    Boolean? db
    Boolean? noheader
    Boolean? csv
    Boolean? no_path
    Boolean? mini_d
    Boolean? min_cov
    Boolean? summary
  }
  command <<<
    abricate \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (fof_n) then "--fofn" else ""} \
      ~{if (setup_db) then "--setupdb" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (datadir) then "--datadir" else ""} \
      ~{if (db) then "--db" else ""} \
      ~{if (noheader) then "--noheader" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (no_path) then "--nopath" else ""} \
      ~{if (mini_d) then "--minid" else ""} \
      ~{if (min_cov) then "--mincov" else ""} \
      ~{if (summary) then "--summary" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Verbose debug output."
    quiet: "Quiet mode, no stderr output."
    check: "Check dependencies are installed."
    threads: "[N]   Use this many BLAST+ threads [1]."
    fof_n: "[X]      Run on files listed in this file []."
    setup_db: "Format all the BLAST databases."
    list: "List included databases."
    datadir: "[X]   Databases folder [/usr/local/db]."
    db: "[X]        Database to use [ncbi]."
    noheader: "Suppress column header row."
    csv: "Output CSV instead of TSV."
    no_path: "Strip filename paths from FILE column."
    mini_d: "[n.n]   Minimum DNA %identity [80]."
    min_cov: "[n.n]  Minimum DNA %coverage [80]."
    summary: "Summarize multiple reports into a table."
  }
  output {
    File out_stdout = stdout()
  }
}