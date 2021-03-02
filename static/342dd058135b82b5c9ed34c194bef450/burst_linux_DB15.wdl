version 1.0

task BurstLinuxDB15 {
  input {
    Boolean? references
    Boolean? accelerator
    Boolean? queries
    File? o_name_file
    Boolean? forward_reverse
    Boolean? whitespace
    Boolean? x_alphabet
    Boolean? n_wildcard
    Boolean? taxonomy
    Boolean? mode
    Boolean? make_db
    Boolean? db_partition
    Boolean? tax_a_cut
    Boolean? tax_a_ncbi
    Boolean? skip_am_big
    Boolean? tax_a_suppress
    Boolean? id
    Boolean? threads
    Boolean? shear
    Boolean? fingerprint
    Boolean? pre_pass
    Boolean? heuristic
    Boolean? no_progress
  }
  command <<<
    burst_linux_DB15 \
      ~{if (references) then "--references" else ""} \
      ~{if (accelerator) then "--accelerator" else ""} \
      ~{if (queries) then "--queries" else ""} \
      ~{if (o_name_file) then "--output" else ""} \
      ~{if (forward_reverse) then "--forwardreverse" else ""} \
      ~{if (whitespace) then "--whitespace" else ""} \
      ~{if (x_alphabet) then "--xalphabet" else ""} \
      ~{if (n_wildcard) then "--nwildcard" else ""} \
      ~{if (taxonomy) then "--taxonomy" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (make_db) then "--makedb" else ""} \
      ~{if (db_partition) then "--dbpartition" else ""} \
      ~{if (tax_a_cut) then "--taxacut" else ""} \
      ~{if (tax_a_ncbi) then "--taxa_ncbi" else ""} \
      ~{if (skip_am_big) then "--skipambig" else ""} \
      ~{if (tax_a_suppress) then "--taxasuppress" else ""} \
      ~{if (id) then "--id" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (shear) then "--shear" else ""} \
      ~{if (fingerprint) then "--fingerprint" else ""} \
      ~{if (pre_pass) then "--prepass" else ""} \
      ~{if (heuristic) then "--heuristic" else ""} \
      ~{if (no_progress) then "--noprogress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/burst:v1.0--0"
  }
  parameter_meta {
    references: "(-r) <name>: FASTA/edx DB of reference sequences [required]"
    accelerator: "(-a) <name>: Creates/uses a helper DB (acc/acx) [optional]"
    queries: "(-q) <name>: FASTA file of queries to search [required if aligning]"
    o_name_file: "(-o) <name>: Blast6/edb file for output alignments/database [required]"
    forward_reverse: "(-fr): also search the reverse complement of queries"
    whitespace: "(-w): write full query names in output (include whitespace)"
    x_alphabet: "(-x): Allow any alphabet and disable ambiguity matching"
    n_wildcard: "(-y): Allow N,X to match anything (in query and reference)"
    taxonomy: "(-b) <name>: taxonomy map (to interpolate, use -m CAPITALIST)"
    mode: "(-m) <name>: Pick an alignment reporting mode by name. Available modes:\\nBEST (report first best match by hybrid BLAST id)\\nALLPATHS (report all ties with same error profile)\\nCAPITALIST (minimize set of references AND interpolate taxonomy) [default]\\nFORAGE (report all matches above specified threshold)\\nANY (report any valid hit above specified threshold)"
    make_db: "(-d) [name qLen]: Create a database from input references\\n[name]: Optional. Can be DNA, RNA, or QUICK [QUICK]\\n[qLen]: Optional. Max query length to search in DB [500]"
    db_partition: "(-dp) <int>: Split DB making into <int> chunks (lossy) [1]"
    tax_a_cut: "(-bc) <num>: allow 1/<int> rank discord OR % conf; 1/[10]"
    tax_a_ncbi: "(-bn): Assume NCBI header format '>xxx|accsn...' for taxonomy"
    skip_am_big: "(-sa): Do not consider highly ambiguous queries (5+ ambigs)"
    tax_a_suppress: "(-bs) [STRICT]: Suppress taxonomic specificity by %ID"
    id: "(-i) <decimal>: target minimum similarity (range 0-1) [0.97]"
    threads: "(-t) <int>: How many logical processors to use [8]"
    shear: "(-s) [len]: Shear references longer than [len] bases [500]"
    fingerprint: "(-f): Use sketch fingerprints to precheck matches (or cluster db)"
    pre_pass: "(-p) [speed]: use ultra-heuristic pre-matching\\n[speed]: Optional. Integer, maximum search effort [16]"
    heuristic: "(-hr): allow relaxed comparison of low-id matches"
    no_progress: ": suppress progress indicator"
  }
  output {
    File out_stdout = stdout()
    File out_o_name_file = "${in_o_name_file}"
  }
}