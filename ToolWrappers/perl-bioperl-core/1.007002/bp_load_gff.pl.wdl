version 1.0

task BpLoadGffpl {
  input {
    Boolean? dsn
    String? of__database
    String? adaptor
    Boolean? user
    Boolean? pass
    Boolean? fast_a
    Boolean? create
    Boolean? max_feature
    Boolean? group
    Boolean? upgrade
    Boolean? gff_three_munge
    Boolean? quiet
    Boolean? summary
    String notes
  }
  command <<<
    bp_load_gff_pl \
      ~{notes} \
      ~{if (dsn) then "--dsn" else ""} \
      ~{if defined(of__database) then ("-d " +  '"' + of__database + '"') else ""} \
      ~{if defined(adaptor) then ("--adaptor " +  '"' + adaptor + '"') else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if (pass) then "--pass" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (create) then "--create" else ""} \
      ~{if (max_feature) then "--maxfeature" else ""} \
      ~{if (group) then "--group" else ""} \
      ~{if (upgrade) then "--upgrade" else ""} \
      ~{if (gff_three_munge) then "--gff3_munge" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (summary) then "--summary" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dsn: "'dbi:mysql:database=dmel_r5_1;host=myhost;port=myport'\\ndna1.fa dna2.fa features1.gff features2.gff ..."
    of__database: "of --database."
    adaptor: "Schema adaptor (default dbi::mysqlopt)"
    user: "<user>      Username for mysql authentication"
    pass: "<password>  Password for mysql authentication"
    fast_a: "<path>      Fasta file or directory containing fasta files for the DNA"
    create: "Force creation and initialization of database"
    max_feature: "Set the value of the maximum feature size (default 100 Mb; must be a power of 10)"
    group: "A list of one or more tag names (comma or space separated)\\nto be used for grouping in the 9th column."
    upgrade: "Upgrade existing database to current schema"
    gff_three_munge: "Activate GFF3 name munging (see Bio::DB::GFF)"
    quiet: "No progress reports"
    summary: "Generate summary statistics for drawing coverage histograms.\\nThis can be run on a previously loaded database or during\\nthe load."
    notes: "If the filename is given as \\\"-\\\" then the input is taken from standard\\ninput. Compressed files (.gz, .Z, .bz2) are automatically uncompressed.\\nFASTA format files are distinguished from GFF files by their filename\\nextensions. Files ending in .fa, .fasta, .fast, .seq, .dna and their\\nuppercase variants are treated as FASTA files. Everything else is\\ntreated as a GFF file. If you wish to load -fasta files from STDIN, then\\nuse the -f command-line swith with an argument of '-', as in\\ngunzip my_data.fa.gz | bp_fast_load_gff.pl -d test -f -\\nOn the first load of a database, you will see a number of \\\"unknown\\ntable\\\" errors. This is normal.\\nAbout maxfeature: the default value is 100,000,000 bases. If you have\\nfeatures that are close to or greater that 100Mb in length, then the\\nvalue of maxfeature should be increased to 1,000,000,000, or another\\npower of 10."
  }
  output {
    File out_stdout = stdout()
  }
}