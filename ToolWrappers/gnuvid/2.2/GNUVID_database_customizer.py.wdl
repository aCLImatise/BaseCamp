version 1.0

task GNUVIDDatabaseCustomizerpy {
  input {
    Boolean? genbank_refseq
    Boolean? pro_kk_a
    File? list_csv
    Boolean? individual_files
    String prefix_name
    String directory_path
  }
  command <<<
    GNUVID_database_customizer_py \
      ~{prefix_name} \
      ~{directory_path} \
      ~{if (genbank_refseq) then "--GenBank_RefSeq" else ""} \
      ~{if (pro_kk_a) then "--prokka" else ""} \
      ~{if defined(list_csv) then ("--list_csv " +  '"' + list_csv + '"') else ""} \
      ~{if (individual_files) then "--individual_files" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnuvid:2.2--0"
  }
  parameter_meta {
    genbank_refseq: "fna files from GenBank or RefSeq"
    pro_kk_a: "fna files from prokka"
    list_csv: "a file.csv of 3+ columns: file_name, old locustag, new\\nlocustag and optionally metadata"
    individual_files: "individual modified files\\n"
    prefix_name: "prefix name for the output folder and the one\\nconcatenated modified file"
    directory_path: "path to directory of fna, RAST txt or gff files"
  }
  output {
    File out_stdout = stdout()
  }
}