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
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--check" false="" check} \
      ~{true="--threads" false="" threads} \
      ~{true="--fofn" false="" fof_n} \
      ~{true="--setupdb" false="" setup_db} \
      ~{true="--list" false="" list} \
      ~{true="--datadir" false="" datadir} \
      ~{true="--db" false="" db} \
      ~{true="--noheader" false="" noheader} \
      ~{true="--csv" false="" csv} \
      ~{true="--nopath" false="" no_path} \
      ~{true="--minid" false="" mini_d} \
      ~{true="--mincov" false="" min_cov} \
      ~{true="--summary" false="" summary}
  >>>
  parameter_meta {
    debug: "Verbose debug output."
    quiet: "Quiet mode, no stderr output."
    check: "Check dependencies are installed."
    threads: "[N]   Use this many BLAST+ threads [1]."
    fof_n: "[X]      Run on files listed in this file []."
    setup_db: "Format all the BLAST databases."
    list: "List included databases."
    datadir: "[X]   Databases folder [/tmp/tmptbtde21b/db]."
    db: "[X]        Database to use [ncbi]."
    noheader: "Suppress column header row."
    csv: "Output CSV instead of TSV."
    no_path: "Strip filename paths from FILE column."
    mini_d: "[n.n]   Minimum DNA %identity [80]."
    min_cov: "[n.n]  Minimum DNA %coverage [80]."
    summary: "Summarize multiple reports into a table."
  }
}