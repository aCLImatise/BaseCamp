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
      ~{true="--check" false="" check} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--threads" false="" threads} \
      ~{true="--debug" false="" debug} \
      ~{true="--scheme" false="" scheme} \
      ~{true="--list" false="" list} \
      ~{true="--longlist" false="" long_list} \
      ~{true="--exclude" false="" exclude} \
      ~{true="--csv" false="" csv} \
      ~{true="--json" false="" json} \
      ~{true="--label" false="" label} \
      ~{true="--nopath" false="" no_path} \
      ~{true="--novel" false="" novel} \
      ~{true="--legacy" false="" legacy} \
      ~{true="--minid" false="" mini_d} \
      ~{true="--mincov" false="" min_cov} \
      ~{true="--minscore" false="" min_score} \
      ~{true="--blastdb" false="" blast_db} \
      ~{true="--datadir" false="" datadir}
  >>>
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
    blast_db: "[X]     BLAST database (default '/tmp/tmp7lnwueq0/db/blast/mlst.fa')"
    datadir: "[X]     PubMLST data (default '/tmp/tmp7lnwueq0/db/pubmlst')"
  }
}