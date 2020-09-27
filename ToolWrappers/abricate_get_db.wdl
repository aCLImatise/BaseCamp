version 1.0

task AbricategetDb {
  input {
    Boolean? debug
    Directory? db_dir
    Int? db
    Boolean? force
  }
  command <<<
    abricate_get_db \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(db_dir) then ("--dbdir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    debug: "!        Verbose debug output (default '0')."
    db_dir: "Parent folder (default '/usr/local/db')."
    db: "Choices: argannot bacmet2 card ecoh ecoli_vf megares ncbi plasmidfinder resfinder vfdb victors (default '')."
    force: "!        Force download even if exists (default '0')."
  }
  output {
    File out_stdout = stdout()
  }
}