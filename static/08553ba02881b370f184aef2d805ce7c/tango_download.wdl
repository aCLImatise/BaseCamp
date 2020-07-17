version 1.0

task TangoDownload {
  input {
    String? dl_dir
    String? tmpdir
    String? tax_dir
    String? sqlite_db
    Boolean? force
    Boolean? skip_check
    Boolean? skip_id_map
  }
  command <<<
    tango download \
      ~{if defined(dl_dir) then ("--dldir " +  '"' + dl_dir + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(tax_dir) then ("--taxdir " +  '"' + tax_dir + '"') else ""} \
      ~{if defined(sqlite_db) then ("--sqlitedb " +  '"' + sqlite_db + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--skip_check" false="" skip_check} \
      ~{true="--skip_idmap" false="" skip_id_map}
  >>>
  parameter_meta {
    dl_dir: "Write files to this directory. Defaults to db name in current directory. Will be created if missing."
    tmpdir: "Temporary directory for downloading files"
    tax_dir: "Directory to store NCBI taxdump files. Defaults to 'taxonomy/' in current directory"
    sqlite_db: "Name of ete3 sqlite file to be created within --taxdir. Defaults to 'taxonomy.sqlite'"
    force: "Overwrite downloaded files"
    skip_check: "Skip check of downloaded fasta file. Default: False"
    skip_id_map: "Skip download of seqid->taxid mapfile (only applies to 'nr' database."
  }
}