version 1.0

task SelectDbpy {
  input {
    String? c_mash_results
    Float? cut_off
    String? db
    Directory? db_dir
    String? db_info_out
    String? input_type
    Boolean? keep_temp_files
    Boolean? strain_level
    Directory? temp_dir
    Int? threads
    String reads
    String data
    String setup_data_dots_h
    String database_dot
  }
  command <<<
    select_db_py \
      ~{reads} \
      ~{data} \
      ~{setup_data_dots_h} \
      ~{database_dot} \
      ~{if defined(c_mash_results) then ("--cmash_results " +  '"' + c_mash_results + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(db_dir) then ("--db_dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(db_info_out) then ("--dbinfo_out " +  '"' + db_info_out + '"') else ""} \
      ~{if defined(input_type) then ("--input_type " +  '"' + input_type + '"') else ""} \
      ~{if (keep_temp_files) then "--keep_temp_files" else ""} \
      ~{if (strain_level) then "--strain_level" else ""} \
      ~{if defined(temp_dir) then ("--temp_dir " +  '"' + temp_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    c_mash_results: "Give location of CMash query results if already done."
    cut_off: "CMash cutoff value. Default is 0.01."
    db: "Where to write subset database. Default:\\ntemp_dir/cmashed_db.fna"
    db_dir: "Directory with all organism files in the full"
    db_info_out: "Where to write subset db_info. Default:\\ntemp_dir/subset_db_info.txt"
    input_type: "Type of input file (fastq/fasta). Default: try to\\nauto-determine"
    keep_temp_files: "Retain KMC files after this script finishes."
    strain_level: "Include all strains above cutoff. Default: 1 strain\\nper species."
    temp_dir: "Directory to write temporary files to."
    threads: "How many compute threads for KMC to use. Default: 4"
    reads: "Path to reads file."
    data: "Path to data/ directory with the files from"
    setup_data_dots_h: "optional arguments:"
    database_dot: "--dbinfo_in DBINFO_IN"
  }
  output {
    File out_stdout = stdout()
  }
}