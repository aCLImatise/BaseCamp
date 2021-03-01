version 1.0

task Mlst {
  input {
    Boolean? check
    Boolean? quiet
    Boolean? threads
    Boolean? debug
    Boolean? scheme
    Boolean? list
    Boolean? long_list
    Boolean? exclude
    Boolean? csv
    Boolean? json
    Boolean? label
    Boolean? no_path
    Boolean? novel
    Boolean? legacy
    Boolean? mini_d
    Boolean? min_cov
    Boolean? min_score
    Boolean? blast_db
    Boolean? datadir
  }
  command <<<
    mlst \
      ~{if (check) then "--check" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (scheme) then "--scheme" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (long_list) then "--longlist" else ""} \
      ~{if (exclude) then "--exclude" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (label) then "--label" else ""} \
      ~{if (no_path) then "--nopath" else ""} \
      ~{if (novel) then "--novel" else ""} \
      ~{if (legacy) then "--legacy" else ""} \
      ~{if (mini_d) then "--minid" else ""} \
      ~{if (min_cov) then "--mincov" else ""} \
      ~{if (min_score) then "--minscore" else ""} \
      ~{if (blast_db) then "--blastdb" else ""} \
      ~{if (datadir) then "--datadir" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    check: "Just check dependencies and exit (default OFF)"
    quiet: "Quiet - no stderr output (default OFF)"
    threads: "[N]     Number of BLAST threads (suggest GNU Parallel instead) (default '1')"
    debug: "Verbose debug output to stderr (default OFF)"
    scheme: "[X]      Don't autodetect, force this scheme on all inputs (default '')"
    list: "List available MLST scheme names (default OFF)"
    long_list: "List allelles for all MLST schemes (default OFF)"
    exclude: "[X]     Ignore these schemes (comma sep. list) (default 'ecoli_2,abaumannii')"
    csv: "Output CSV instead of TSV (default OFF)"
    json: "[X]        Also write results to this file in JSON format (default '')"
    label: "[X]       Replace FILE with this name instead (default '')"
    no_path: "Strip filename paths from FILE column (default OFF)"
    novel: "[X]       Save novel alleles to this FASTA file (default '')"
    legacy: "Use old legacy output with allele header row (requires --scheme) (default OFF)"
    mini_d: "[n.n]     DNA %identity of full allelle to consider 'similar' [~] (default '95')"
    min_cov: "[n.n]    DNA %cov to report partial allele at all [?] (default '10')"
    min_score: "[n.n]  Minumum score out of 100 to match a scheme (when auto --scheme) (default '50')"
    blast_db: "[X]     BLAST database (default '/usr/local/db/blast/mlst.fa')"
    datadir: "[X]     PubMLST data (default '/usr/local/db/pubmlst')"
  }
  output {
    File out_stdout = stdout()
  }
}