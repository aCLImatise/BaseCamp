version 1.0

task SelectDb.py {
  input {
    String? c_mash_results
    String? cut_off
    String? db
    String? db_dir
    String? db_info_in
    String? db_info_out
    String? input_type
    Boolean? keep_temp_files
    Boolean? strain_level
    String? temp_dir
    String? threads
    String reads
    String data
  }
  command <<<
    select_db.py \
      ~{reads} \
      ~{data} \
      ~{if defined(c_mash_results) then ("--cmash_results " +  '"' + c_mash_results + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(db_dir) then ("--db_dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(db_info_in) then ("--dbinfo_in " +  '"' + db_info_in + '"') else ""} \
      ~{if defined(db_info_out) then ("--dbinfo_out " +  '"' + db_info_out + '"') else ""} \
      ~{if defined(input_type) then ("--input_type " +  '"' + input_type + '"') else ""} \
      ~{true="--keep_temp_files" false="" keep_temp_files} \
      ~{true="--strain_level" false="" strain_level} \
      ~{if defined(temp_dir) then ("--temp_dir " +  '"' + temp_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    c_mash_results: "Give location of CMash query results if already done."
    cut_off: "CMash cutoff value. Default is 0.01."
    db: "Where to write subset database. Default: temp_dir/cmashed_db.fna"
    db_dir: "Directory with all organism files in the full database."
    db_info_in: "Specify location of db_info file. Default is data/db_info.txt"
    db_info_out: "Where to write subset db_info. Default: temp_dir/subset_db_info.txt"
    input_type: "Type of input file (fastq/fasta). Default: try to auto-determine"
    keep_temp_files: "Retain KMC files after this script finishes."
    strain_level: "Include all strains above cutoff. Default: 1 strain per species."
    temp_dir: "Directory to write temporary files to."
    threads: "How many compute threads for KMC to use. Default: 4"
    reads: "Path to reads file."
    data: "Path to data/ directory with the files from setup_data.sh"
  }
}