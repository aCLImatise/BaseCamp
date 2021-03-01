version 1.0

task BpDownloadQueryGenbankpl {
  input {
    String? query
    File? query_file
    File? gi_file
    String? db
    File? outfile
    File? format
    String? verbose
    Int? max_ids
    String? rel_date
    String? min_date
    String? date_type
  }
  command <<<
    bp_download_query_genbank_pl \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(query_file) then ("--queryfile " +  '"' + query_file + '"') else ""} \
      ~{if defined(gi_file) then ("--gifile " +  '"' + gi_file + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(max_ids) then ("--maxids " +  '"' + max_ids + '"') else ""} \
      ~{if defined(rel_date) then ("--reldate " +  '"' + rel_date + '"') else ""} \
      ~{if defined(min_date) then ("--mindate " +  '"' + min_date + '"') else ""} \
      ~{if defined(date_type) then ("--datetype " +  '"' + date_type + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query: "string OR"
    query_file: "file with query OR"
    gi_file: "with list of GIs to download"
    db: "(nucleotide [default], nucest, protein, )"
    outfile: "file (results are displayed on screen otherwise)"
    format: "file output format (fasta by default)"
    verbose: "output"
    max_ids: "number of IDs to retrieve in a set (100 at a time by default)"
    rel_date: "for a record"
    min_date: "date for record"
    date_type: "or mdat (entered or modified)"
  }
  output {
    File out_stdout = stdout()
    File out_format = "${in_format}"
  }
}