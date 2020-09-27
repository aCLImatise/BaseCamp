version 1.0

task ContigtaxDownload {
  input {
    Directory? dl_dir
    Directory? tmpdir
    Directory? tax_dir
    File? sqlite_db
    String? tax_dir_dot
    Boolean? force
    Boolean? skip_check
    Boolean? skip_id_map
  }
  command <<<
    contigtax download \
      ~{if defined(dl_dir) then ("--dldir " +  '"' + dl_dir + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(tax_dir) then ("--taxdir " +  '"' + tax_dir + '"') else ""} \
      ~{if defined(sqlite_db) then ("--sqlitedb " +  '"' + sqlite_db + '"') else ""} \
      ~{if defined(tax_dir_dot) then ("--taxdir. " +  '"' + tax_dir_dot + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (skip_check) then "--skip_check" else ""} \
      ~{if (skip_id_map) then "--skip_idmap" else ""}
  >>>
  parameter_meta {
    dl_dir: "Write files to this directory. Defaults to db name in\\ncurrent directory. Will be created if missing."
    tmpdir: "Temporary directory for downloading files"
    tax_dir: "Directory to store NCBI taxdump files. Defaults to\\n'taxonomy/' in current directory"
    sqlite_db: "Name of ete3 sqlite file to be created within"
    tax_dir_dot: "to 'taxonomy.sqlite'"
    force: "Overwrite downloaded files"
    skip_check: "Skip check of downloaded fasta file. Default: False"
    skip_id_map: "Skip download of seqid->taxid mapfile (only applies to\\n'nr' database).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}