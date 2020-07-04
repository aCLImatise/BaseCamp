version 1.0

task AbricateGetDb {
  input {
    Boolean? debug
    String? db_dir
    String? db
    Boolean? force
  }
  command <<<
    abricate-get_db \
      ~{true="--debug" false="" debug} \
      ~{if defined(db_dir) then ("--dbdir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    debug: "!        Verbose debug output (default '0')."
    db_dir: "Parent folder (default '/tmp/tmptbtde21b/db')."
    db: "Choices: argannot bacmet2 card ecoh ecoli_vf megares ncbi plasmidfinder resfinder vfdb victors (default '')."
    force: "!        Force download even if exists (default '0')."
  }
}