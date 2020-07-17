version 1.0

task PanphlanPangenomeGeneration.py {
  input {
    String? i_ffn
    String? i_fna
    String? i_gff
    String? clade
    String? result_folder_database
    String? roar_y_dir
    String? th
    String? tmp
    Boolean? uc
    Boolean? verbose
  }
  command <<<
    panphlan_pangenome_generation.py \
      ~{if defined(i_ffn) then ("--i_ffn " +  '"' + i_ffn + '"') else ""} \
      ~{if defined(i_fna) then ("--i_fna " +  '"' + i_fna + '"') else ""} \
      ~{if defined(i_gff) then ("--i_gff " +  '"' + i_gff + '"') else ""} \
      ~{if defined(clade) then ("--clade " +  '"' + clade + '"') else ""} \
      ~{if defined(result_folder_database) then ("--output " +  '"' + result_folder_database + '"') else ""} \
      ~{if defined(roar_y_dir) then ("--roary_dir " +  '"' + roar_y_dir + '"') else ""} \
      ~{if defined(th) then ("--th " +  '"' + th + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{true="--uc" false="" uc} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    i_ffn: "Folder containing the .ffn gene sequence files"
    i_fna: "Folder containing the .fna genome sequence files"
    i_gff: "Folder containing the .gff gene annotation files"
    clade: "Name of the species pangenome database, for example: -c ecoli17"
    result_folder_database: "Result folder for all database files"
    roar_y_dir: "Use pre-processed Roary pangenome clustering (instead of usearch): Folder containing gene family cluster results of Roary based on gff"
    th: "Threshold of gene sequence similarity (in percentage), default: 95.0 %."
    tmp: "Folder for temporary files, default: TMP_panphlan_db"
    uc: "Keep all usearch7 output files"
    verbose: "Show progress information"
  }
}