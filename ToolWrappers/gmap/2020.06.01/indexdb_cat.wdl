version 1.0

task IndexdbCat {
  input {
    Directory? destdir
    String? db
    Int? km_er
    Int? sampling
    String? use_snps
    String? options_dot_dot_dot
  }
  command <<<
    indexdb_cat \
      ~{options_dot_dot_dot} \
      ~{if defined(destdir) then ("--destdir " +  '"' + destdir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(sampling) then ("--sampling " +  '"' + sampling + '"') else ""} \
      ~{if defined(use_snps) then ("--use-snps " +  '"' + use_snps + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    destdir: "Directory where to write cmet index files (default is\\nvalue of -F, if provided; otherwise the value of the\\nGMAP genome directory specified at compile time)"
    db: "Genome database"
    km_er: "kmer size to use in genome database (allowed values: 16 or less).\\nIf not specified, the program will find the highest available\\nkmer size in the genome database"
    sampling: "Sampling to use in genome database.  If not specified, the program\\nwill find the smallest available sampling value in the genome database\\nwithin selected basesize and k-mer size"
    use_snps: "Use database containing known SNPs (in <STRING>.iit, built\\npreviously using snpindex) for tolerance to SNPs"
    options_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}