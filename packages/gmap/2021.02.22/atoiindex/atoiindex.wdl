version 1.0

task Atoiindex {
  input {
    Directory? source_dir
    Directory? destdir
    String? db
    Int? km_er
    Int? sampling
    String? use_snps
    String? options_dot_dot_dot
  }
  command <<<
    atoiindex \
      ~{options_dot_dot_dot} \
      ~{if defined(source_dir) then ("--sourcedir " +  '"' + source_dir + '"') else ""} \
      ~{if defined(destdir) then ("--destdir " +  '"' + destdir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(sampling) then ("--sampling " +  '"' + sampling + '"') else ""} \
      ~{if defined(use_snps) then ("--use-snps " +  '"' + use_snps + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gmap:2021.02.22--pl526h2f06484_0"
  }
  parameter_meta {
    source_dir: "Directory where to read cmet index files (default is\\nGMAP genome directory specified at compile time)"
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