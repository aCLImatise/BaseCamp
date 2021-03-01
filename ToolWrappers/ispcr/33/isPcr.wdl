version 1.0

task IsPcr {
  input {
    File? ooc
    Int? tile_size
    Int? step_size
    Int? maxsize
    Int? minsize
    Int? min_perfect
    Int? min_good
    File? mask
    File? make_ooc
    Int? rep_match
    String? flip_reverse
    String? out
    String database
    String query
  }
  command <<<
    isPcr \
      ~{database} \
      ~{query} \
      ~{if defined(ooc) then ("-ooc " +  '"' + ooc + '"') else ""} \
      ~{if defined(tile_size) then ("-tileSize " +  '"' + tile_size + '"') else ""} \
      ~{if defined(step_size) then ("-stepSize " +  '"' + step_size + '"') else ""} \
      ~{if defined(maxsize) then ("-maxSize " +  '"' + maxsize + '"') else ""} \
      ~{if defined(minsize) then ("-minSize " +  '"' + minsize + '"') else ""} \
      ~{if defined(min_perfect) then ("-minPerfect " +  '"' + min_perfect + '"') else ""} \
      ~{if defined(min_good) then ("-minGood " +  '"' + min_good + '"') else ""} \
      ~{if defined(mask) then ("-mask " +  '"' + mask + '"') else ""} \
      ~{if defined(make_ooc) then ("-makeOoc " +  '"' + make_ooc + '"') else ""} \
      ~{if defined(rep_match) then ("-repMatch " +  '"' + rep_match + '"') else ""} \
      ~{if defined(flip_reverse) then ("-flipReverse " +  '"' + flip_reverse + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ooc: "Use overused tile file N.ooc.  N should correspond to\\nthe tileSize"
    tile_size: "the size of match that triggers an alignment.\\nDefault is 11 ."
    step_size: "spacing between tiles. Default is 5."
    maxsize: "- Maximum size of PCR product (default 4000)"
    minsize: "- Minimum size of PCR product (default 0)"
    min_perfect: "- Minimum size of perfect match at 3' end of primer (default 15)"
    min_good: "- Minimum size where there must be 2 matches for each mismatch (default 15)"
    mask: "Mask out repeats.  Alignments won't be started in masked region\\nbut may extend through it in nucleotide searches.  Masked areas\\nare ignored entirely in protein or translated searches. Types are\\nlower - mask out lower cased sequence\\nupper - mask out upper cased sequence\\nout   - mask according to database.out RepeatMasker .out file\\nfile.out - mask database according to RepeatMasker file.out"
    make_ooc: "Make overused tile file. Database needs to be complete genome."
    rep_match: "sets the number of repetitions of a tile allowed before\\nit is marked as overused.  Typically this is 256 for tileSize\\n12, 1024 for tile size 11, 4096 for tile size 10.\\nDefault is 1024.  Only comes into play with makeOoc"
    flip_reverse: "complement reverse (second) primer before using"
    out: "- Output format.  Either\\nfa - fasta with position, primers in header (default)\\nbed - tab delimited format. Fields: chrom/start/end/name/score/strand\\npsl - blat format.\\n"
    database: ""
    query: ""
  }
  output {
    File out_stdout = stdout()
    File out_mask = "${in_mask}"
  }
}