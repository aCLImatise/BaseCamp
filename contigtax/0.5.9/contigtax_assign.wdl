version 1.0

task ContigtaxAssign {
  input {
    String? format
    String? taxid_map
    String? tax_dir
    String? sqlite_db
    String? blob_out
    String? taxid_out
    String? mode
    Array[String] assign_ranks
    Array[String] report_ranks
    Array[String] rank_thresholds
    String? vote_threshold
    String? top
    String? evalue
    String? cpus
    String? chunksize
    String diamond_results
    String outfile
  }
  command <<<
    contigtax assign \
      ~{diamond_results} \
      ~{outfile} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(taxid_map) then ("--taxidmap " +  '"' + taxid_map + '"') else ""} \
      ~{if defined(tax_dir) then ("--taxdir " +  '"' + tax_dir + '"') else ""} \
      ~{if defined(sqlite_db) then ("--sqlitedb " +  '"' + sqlite_db + '"') else ""} \
      ~{if defined(blob_out) then ("--blobout " +  '"' + blob_out + '"') else ""} \
      ~{if defined(taxid_out) then ("--taxidout " +  '"' + taxid_out + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(assign_ranks) then ("--assignranks " +  '"' + assign_ranks + '"') else ""} \
      ~{if defined(report_ranks) then ("--reportranks " +  '"' + report_ranks + '"') else ""} \
      ~{if defined(rank_thresholds) then ("--rank_thresholds " +  '"' + rank_thresholds + '"') else ""} \
      ~{if defined(vote_threshold) then ("--vote_threshold " +  '"' + vote_threshold + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""}
  >>>
  parameter_meta {
    format: "Type of file format for diamond results. blast=blast tabular output, 'contigtax'=blast tabular output with taxid in 12th column"
    taxid_map: "Provide custom protein to taxid mapfile."
    tax_dir: "Directory specified during 'contigtax download taxonomy'. Defaults to taxonomy/."
    sqlite_db: "Name of ete3 sqlite file to be created within --taxdir. Defaults to 'taxonomy.sqlite'"
    blob_out: "Output hits.tsv table compatible with blobtools"
    taxid_out: "Write output with taxonomy ids instead of taxonomy names to file"
    mode: "Mode to use for parsing taxonomy: 'rank_lca' (default), 'rank_vote' or 'score'"
    assign_ranks: "Ranks to use when assigning taxa. Defaults to phylum genus species"
    report_ranks: "Ranks to report in output. Defaults to superkingom phylum class order family genus species"
    rank_thresholds: "Rank-specific thresholds corresponding to percent identity of a hit. Defaults to 45 (phylum), 60 (genus) and 85 (species)"
    vote_threshold: "Minimum fraction required when voting on rank assignments."
    top: "Top percent of best score to consider hits for (default=5)"
    evalue: "Maximum e-value to store hits. Default 0.001"
    cpus: "Number of cpus to use. Defaults to 1."
    chunksize: "Size of chunks sent to process pool. For large input files using a large chunksize can make the job complete much faster than using the default value of 1"
    diamond_results: "Diamond blastx results"
    outfile: "Output file"
  }
}