version 1.0

task WhatsGNUDatabaseCustomizer.py {
  input {
    Boolean? genbank_refseq
    Boolean? pro_kk_a
    Boolean? rast
    Boolean? gff_file
    Boolean? gzipped
    String? list_csv
    Boolean? individual_files
    Boolean? concatenated_file
    String prefix_name
    Directory directory_path
  }
  command <<<
    WhatsGNU_database_customizer.py \
      ~{prefix_name} \
      ~{directory_path} \
      ~{true="--GenBank_RefSeq" false="" genbank_refseq} \
      ~{true="--prokka" false="" pro_kk_a} \
      ~{true="--RAST" false="" rast} \
      ~{true="--gff_file" false="" gff_file} \
      ~{true="--gzipped" false="" gzipped} \
      ~{if defined(list_csv) then ("--list_csv " +  '"' + list_csv + '"') else ""} \
      ~{true="--individual_files" false="" individual_files} \
      ~{true="--concatenated_file" false="" concatenated_file}
  >>>
  parameter_meta {
    genbank_refseq: "faa files from GenBank or RefSeq"
    pro_kk_a: "faa files from Prokka"
    rast: "spreadsheet tab-separated text files from RAST"
    gff_file: "gff file from prokka, needed if planning to run Roary"
    gzipped: "compressed file (.gz)"
    list_csv: "a file.csv of 3+ columns: file_name, old locustag, new locustag and optionally metadata"
    individual_files: "individual modified files"
    concatenated_file: "one concatenated modified file of all input files"
    prefix_name: "prefix name for the output folder and the one concatenated modified file"
    directory_path: "path to directory of faa, RAST txt or gff files"
  }
}