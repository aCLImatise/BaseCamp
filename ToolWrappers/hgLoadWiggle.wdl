version 1.0

task HgLoadWiggle {
  input {
    Boolean? no_bin
    Boolean? no_load
    Boolean? no_history
    Boolean? old_table
    Boolean? tab
    File? path_prefix
    Int? chrom_info_db
    Int? max_chrom_name_length
    File? tmpdir
    Int? verbose
    String database
    String track
    String files
  }
  command <<<
    hgLoadWiggle \
      ~{database} \
      ~{track} \
      ~{files} \
      ~{if (no_bin) then "-noBin" else ""} \
      ~{if (no_load) then "-noLoad" else ""} \
      ~{if (no_history) then "-noHistory" else ""} \
      ~{if (old_table) then "-oldTable" else ""} \
      ~{if (tab) then "-tab" else ""} \
      ~{if defined(path_prefix) then ("-pathPrefix " +  '"' + path_prefix + '"') else ""} \
      ~{if defined(chrom_info_db) then ("-chromInfoDb " +  '"' + chrom_info_db + '"') else ""} \
      ~{if defined(max_chrom_name_length) then ("-maxChromNameLength " +  '"' + max_chrom_name_length + '"') else ""} \
      ~{if defined(tmpdir) then ("-tmpDir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    no_bin: "suppress bin field"
    no_load: "do not load table, only create .tab file"
    no_history: "do not add history table comments (for custom tracks)"
    old_table: "add to existing table"
    tab: "Separate by tabs rather than space"
    path_prefix: ".wib file path prefix to use (default /gbdb/<DB>/wib)"
    chrom_info_db: "database to extract chromInfo size information"
    max_chrom_name_length: "- specify max chromName length to avoid\\n- reference to chromInfo table"
    tmpdir: "- path to directory for creation of temporary .tab file\\n- which will be removed after loading"
    verbose: "N=2 see # of lines input and SQL create statement,\\nN=3 see chrom size info, N=4 see details on chrom size info\\n"
    database: ""
    track: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}