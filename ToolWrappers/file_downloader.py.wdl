version 1.0

task FileDownloaderpy {
  input {
    Boolean? protein
    File? assembly_fast_a
    Boolean? no_indexing
    Directory? out
    Directory? db_root
  }
  command <<<
    file_downloader_py \
      ~{if (protein) then "--protein" else ""} \
      ~{if (assembly_fast_a) then "--assembly_fasta" else ""} \
      ~{if (no_indexing) then "--no_indexing" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(db_root) then ("--dbroot " +  '"' + db_root + '"') else ""}
  >>>
  parameter_meta {
    protein: ": For DFAST reference libraries.\\nFiles will be downloaded to DB root directory by default.\\nDB root can be specified with \\\"--dbroot\\\" option."
    assembly_fast_a: ": For Reference genomes\\nReference genome file will be downloaded from NCBI Assembly Database either in GenBank or Fasta format.\\nFiles will be written to the current directory or the directory specified with \\\"--out\\\" option."
    no_indexing: "Do not perform database indexing"
    out: "Output directory (default: current directory.\\nFor --assembly, --assembly_fasta. Not allowed with argument --dbroot)"
    db_root: "DB root directory (default: APP_ROOT/db.\\nFor --protein, --cdd, --hmm. Not allowed with argument --out)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_assembly_fast_a = "${in_assembly_fast_a}"
    Directory out_out = "${in_out}"
    Directory out_db_root = "${in_db_root}"
  }
}