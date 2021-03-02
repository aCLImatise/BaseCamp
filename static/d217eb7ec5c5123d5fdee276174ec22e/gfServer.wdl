version 1.0

task GfServer {
  input {
    Int? tile_size
    String? step_size
    Int? min_match
    Int? max_gap
    Boolean? trans
    File? log
    Boolean? seq_log
    Boolean? syslog
    Int? log_facility
    Boolean? mask
    Int? rep_match
    Int? max_dna_hits
    Int? max_trans_hits
    Int? max_nt_size
    Int? max_as_size
    String? can_stop
  }
  command <<<
    gfServer \
      ~{if defined(tile_size) then ("-tileSize " +  '"' + tile_size + '"') else ""} \
      ~{if defined(step_size) then ("-stepSize " +  '"' + step_size + '"') else ""} \
      ~{if defined(min_match) then ("-minMatch " +  '"' + min_match + '"') else ""} \
      ~{if defined(max_gap) then ("-maxGap " +  '"' + max_gap + '"') else ""} \
      ~{if (trans) then "-trans" else ""} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if (seq_log) then "-seqLog" else ""} \
      ~{if (syslog) then "-syslog" else ""} \
      ~{if defined(log_facility) then ("-logFacility " +  '"' + log_facility + '"') else ""} \
      ~{if (mask) then "-mask" else ""} \
      ~{if defined(rep_match) then ("-repMatch " +  '"' + rep_match + '"') else ""} \
      ~{if defined(max_dna_hits) then ("-maxDnaHits " +  '"' + max_dna_hits + '"') else ""} \
      ~{if defined(max_trans_hits) then ("-maxTransHits " +  '"' + max_trans_hits + '"') else ""} \
      ~{if defined(max_nt_size) then ("-maxNtSize " +  '"' + max_nt_size + '"') else ""} \
      ~{if defined(max_as_size) then ("-maxAsSize " +  '"' + max_as_size + '"') else ""} \
      ~{if defined(can_stop) then ("-canStop " +  '"' + can_stop + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tile_size: "size of n-mers to index.  Default is 11 for nucleotides, 4 for\\nproteins (or translated nucleotides)."
    step_size: "spacing between tiles. Default is tileSize."
    min_match: "Number of n-mer matches that trigger detailed alignment\\nDefault is 2 for nucleotides, 3 for protiens."
    max_gap: "Number of insertions or deletions allowed between n-mers.\\nDefault is 2 for nucleotides, 0 for protiens."
    trans: "Translate database to protein in 6 frames.  Note: it is best\\nto run this on RepeatMasked data in this case."
    log: "keep a log file that records server requests."
    seq_log: "Include sequences in log file (not logged with -syslog)"
    syslog: "Log to syslog"
    log_facility: "log to the specified syslog facility - default local0."
    mask: "Use masking from nib file."
    rep_match: "Number of occurrences of a tile (nmer) that trigger repeat masking the tile.\\nDefault is 1024."
    max_dna_hits: "Maximum number of hits for a dna query that are sent from the server.\\nDefault is 100."
    max_trans_hits: "Maximum number of hits for a translated query that are sent from the server.\\nDefault is 200."
    max_nt_size: "Maximum size of untranslated DNA query sequence\\nDefault is 40000"
    max_as_size: "Maximum size of protein or translated DNA queries\\nDefault is 8000"
    can_stop: "set then a quit message will actually take down the\\nserver\\n"
  }
  output {
    File out_stdout = stdout()
  }
}