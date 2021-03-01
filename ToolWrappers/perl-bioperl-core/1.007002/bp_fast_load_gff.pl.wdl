version 1.0

task BpFastLoadGffpl {
  input {
    String? of__database
    String? database
    Boolean? create
    Boolean? local
    Boolean? user
    Boolean? fast_a
    Boolean? password
    Boolean? long_list
    Boolean? max_feature
    Boolean? group
    Boolean? gff_three_munge
    Boolean? summary
    Boolean? temporary
    String notes
  }
  command <<<
    bp_fast_load_gff_pl \
      ~{notes} \
      ~{if defined(of__database) then ("-d " +  '"' + of__database + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if (create) then "--create" else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (password) then "--password" else ""} \
      ~{if (long_list) then "--long_list" else ""} \
      ~{if (max_feature) then "--maxfeature" else ""} \
      ~{if (group) then "--group" else ""} \
      ~{if (gff_three_munge) then "--gff3_munge" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (temporary) then "--Temporary" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    of__database: "of --database."
    database: "Mysql database name"
    create: "Reinitialize/create data tables without asking"
    local: "Try to load a remote database using local data."
    user: "Username to log in as"
    fast_a: "File or directory containing fasta files to load"
    password: "Password to use for authentication"
    long_list: "Directory containing a very large number of\\nGFF and/or FASTA files"
    max_feature: "Set the value of the maximum feature size (default 100Mb; must be a power of 10)"
    group: "A list of one or more tag names (comma or space separated)\\nto be used for grouping in the 9th column."
    gff_three_munge: "Activate GFF3 name munging (see Bio::DB::GFF)"
    summary: "Generate summary statistics for drawing coverage histograms.\\nThis can be run on a previously loaded database or during\\nthe load."
    temporary: "Location of a writable scratch directory"
    notes: "If the filename is given as \\\"-\\\" then the input is taken from standard\\ninput. Compressed files (.gz, .Z, .bz2) are automatically uncompressed.\\nFASTA format files are distinguished from GFF files by their filename\\nextensions. Files ending in .fa, .fasta, .fast, .seq, .dna and their\\nuppercase variants are treated as FASTA files. Everything else is\\ntreated as a GFF file. If you wish to load -fasta files from STDIN, then\\nuse the -f command-line swith with an argument of '-', as in\\ngunzip my_data.fa.gz | bp_fast_load_gff.pl -d test -f -\\nThe nature of the load requires that the database be on the local\\nmachine and that the indicated user have the \\\"file\\\" privilege to load\\nthe tables and have enough room in /usr/tmp (or whatever is specified by\\nthe \\$TMPDIR environment variable), to hold the tables transiently. If\\nyour MySQL is version 3.22.6 and was compiled using the \\\"load local\\nfile\\\" option, then you may be able to load remote databases with local\\ndata using the --local option.\\nAbout maxfeature: the default value is 100,000,000 bases. If you have\\nfeatures that are close to or greater that 100Mb in length, then the\\nvalue of maxfeature should be increased to 1,000,000,000. This value\\nmust be a power of 10.\\nIf the list of GFF or fasta files exceeds the kernel limit for the\\nmaximum number of command-line arguments, use the --long_list\\n/path/to/files option.\\nThe adaptor used is dbi::mysqlopt. There is currently no way to change\\nthis."
  }
  output {
    File out_stdout = stdout()
  }
}