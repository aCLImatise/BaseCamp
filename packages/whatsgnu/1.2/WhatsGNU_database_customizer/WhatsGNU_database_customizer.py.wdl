version 1.0

task WhatsGNUDatabaseCustomizerpy {
  input {
    Boolean? genbank_refseq
    Boolean? pro_kk_a
    Boolean? rast
    Boolean? gff_file
    Boolean? gzipped
    File? list_csv
    Boolean? individual_files
    Boolean? concatenated_file
    String prefix_name
    String directory_path
  }
  command <<<
    WhatsGNU_database_customizer_py \
      ~{prefix_name} \
      ~{directory_path} \
      ~{if (genbank_refseq) then "--GenBank_RefSeq" else ""} \
      ~{if (pro_kk_a) then "--prokka" else ""} \
      ~{if (rast) then "--RAST" else ""} \
      ~{if (gff_file) then "--gff_file" else ""} \
      ~{if (gzipped) then "--gzipped" else ""} \
      ~{if defined(list_csv) then ("--list_csv " +  '"' + list_csv + '"') else ""} \
      ~{if (individual_files) then "--individual_files" else ""} \
      ~{if (concatenated_file) then "--concatenated_file" else ""}
  >>>
  parameter_meta {
    genbank_refseq: "faa files from GenBank or RefSeq"
    pro_kk_a: "faa files from Prokka"
    rast: "spreadsheet tab-separated text files from RAST"
    gff_file: "gff file from prokka, needed if planning to run Roary"
    gzipped: "compressed file (.gz)"
    list_csv: "a file.csv of 3+ columns: file_name, old locustag, new\\nlocustag and optionally metadata"
    individual_files: "individual modified files"
    concatenated_file: "one concatenated modified file of all input files\\n"
    prefix_name: "prefix name for the output folder and the one\\nconcatenated modified file"
    directory_path: "path to directory of faa, RAST txt or gff files"
  }
  output {
    File out_stdout = stdout()
  }
}