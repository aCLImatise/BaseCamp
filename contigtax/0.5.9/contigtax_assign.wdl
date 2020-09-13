version 1.0

task ContigtaxAssign {
  input {
    File? format
    String? taxid_map
    Directory? tax_dir
    File? sqlite_db
    String? tax_dir_dot
    String? blob_out
    File? taxid_out
    String? mode
    Array[String] assign_ranks
    Array[String] report_ranks
    Array[String] rank_thresholds
    String? vote_threshold
    Int? top
    Float? evalue
    Int? cpus
    Int? chunksize
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
      ~{if defined(tax_dir_dot) then ("--taxdir. " +  '"' + tax_dir_dot + '"') else ""} \
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
    format: "Type of file format for diamond results. blast=blast\\ntabular output, 'contigtax'=blast tabular output with\\ntaxid in 12th column"
    taxid_map: "Provide custom protein to taxid mapfile."
    tax_dir: "Directory specified during 'contigtax download\\ntaxonomy'. Defaults to taxonomy/."
    sqlite_db: "Name of ete3 sqlite file to be created within"
    tax_dir_dot: "to 'taxonomy.sqlite'"
    blob_out: "Output hits.tsv table compatible with blobtools"
    taxid_out: "Write output with taxonomy ids instead of taxonomy\\nnames to file"
    mode: "Mode to use for parsing taxonomy: 'rank_lca'\\n(default), 'rank_vote' or 'score'"
    assign_ranks: "Ranks to use when assigning taxa. Defaults to phylum\\ngenus species"
    report_ranks: "Ranks to report in output. Defaults to superkingom\\nphylum class order family genus species"
    rank_thresholds: "Rank-specific thresholds corresponding to percent\\nidentity of a hit. Defaults to 45 (phylum), 60 (genus)\\nand 85 (species)"
    vote_threshold: "Minimum fraction required when voting on rank\\nassignments."
    top: "Top percent of best score to consider hits for\\n(default=5)"
    evalue: "Maximum e-value to store hits. Default 0.001"
    cpus: "Number of cpus to use. Defaults to 1."
    chunksize: "Size of chunks sent to process pool. For large input\\nfiles using a large chunksize can make the job\\ncomplete much faster than using the default value of 1\\n"
    diamond_results: "Diamond blastx results"
    outfile: "Output file"
  }
  output {
    File out_stdout = stdout()
    File out_format = "${in_format}"
    File out_taxid_out = "${in_taxid_out}"
  }
}