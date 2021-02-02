version 1.0

task SelectDbpy {
  input {
    String? c_mash_results
    Float? cut_off
    String? db
    Boolean? strain_level
    Directory? temp_dir
    Int? threads
    String reads
    String data
    String setup_data_dots_h
    String temp_dir_slash_c_mashed_db_dot_fna
    String database_dot
    String data_slash_db_info_dot_txt
    String temp_dir_slash_subset_db_info_dot_txt
    String auto_determine
  }
  command <<<
    select_db_py \
      ~{reads} \
      ~{data} \
      ~{setup_data_dots_h} \
      ~{temp_dir_slash_c_mashed_db_dot_fna} \
      ~{database_dot} \
      ~{data_slash_db_info_dot_txt} \
      ~{temp_dir_slash_subset_db_info_dot_txt} \
      ~{auto_determine} \
      ~{if defined(c_mash_results) then ("--cmash_results " +  '"' + c_mash_results + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (strain_level) then "--strain_level" else ""} \
      ~{if defined(temp_dir) then ("--temp_dir " +  '"' + temp_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    c_mash_results: "Give location of CMash query results if already done."
    cut_off: "CMash cutoff value. Default is 0.01."
    db: "Where to write subset database. Default:"
    strain_level: "Include all strains above cutoff. Default: 1 strain\\nper species."
    temp_dir: "Directory to write temporary files to."
    threads: "How many compute threads for KMC to use. Default: 4"
    reads: "Path to reads file."
    data: "Path to data/ directory with the files from"
    setup_data_dots_h: "optional arguments:"
    temp_dir_slash_c_mashed_db_dot_fna: "--db_dir DB_DIR       Directory with all organism files in the full"
    database_dot: "--dbinfo_in DBINFO_IN"
    data_slash_db_info_dot_txt: "--dbinfo_out DBINFO_OUT"
    temp_dir_slash_subset_db_info_dot_txt: "--input_type {fastq,fasta,AUTO}"
    auto_determine: "--keep_temp_files     Retain KMC files after this script finishes."
  }
  output {
    File out_stdout = stdout()
  }
}