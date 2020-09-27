version 1.0

task Snpindex {
  input {
    Directory? source_dir
    String? db
    Int? km_er
    Int? sampling
    Directory? destdir
    String? snps_db
    Int? max_warnings
    String? options_dot_dot_dot
    String? i_it_file
  }
  command <<<
    snpindex \
      ~{options_dot_dot_dot} \
      ~{i_it_file} \
      ~{if defined(source_dir) then ("--sourcedir " +  '"' + source_dir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(sampling) then ("--sampling " +  '"' + sampling + '"') else ""} \
      ~{if defined(destdir) then ("--destdir " +  '"' + destdir + '"') else ""} \
      ~{if defined(snps_db) then ("--snpsdb " +  '"' + snps_db + '"') else ""} \
      ~{if defined(max_warnings) then ("--max-warnings " +  '"' + max_warnings + '"') else ""}
  >>>
  parameter_meta {
    source_dir: "Directory where to read genome index files (default is\\nGMAP genome directory specified at compile time)"
    db: "Genome database"
    km_er: "kmer size to use in genome database (allowed values: 16 or less).\\nIf not specified, the program will find the highest available\\nkmer size in the genome database"
    sampling: "Sampling to use in genome database.  If not specified, the program\\nwill find the smallest available sampling value in the genome database\\nwithin selected k-mer size"
    destdir: "Directory where to write SNP index files (default is\\nGMAP genome directory specified at compile time)"
    snps_db: "Name of SNP database"
    max_warnings: "Maximum number of warnings to print to stderr about\\ninconsistencies relative to the reference genome.\\nA value of 0 turns off all warnings.  A negative value\\nprints all warnings.  (default -1, meaning no limit)"
    options_dot_dot_dot: ""
    i_it_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}