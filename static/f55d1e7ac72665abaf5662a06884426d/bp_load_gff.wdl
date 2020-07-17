version 1.0

task BpLoadGff.pl {
  input {
    String? of__database
    Boolean? dsn
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
    bp_load_gff.pl \
      ~{notes} \
      ~{if defined(of__database) then ("-d " +  '"' + of__database + '"') else ""} \
      ~{true="--dsn" false="" dsn} \
      ~{if defined(adaptor) then ("--adaptor " +  '"' + adaptor + '"') else ""} \
      ~{true="--user" false="" user} \
      ~{true="--pass" false="" pass} \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--create" false="" create} \
      ~{true="--maxfeature" false="" max_feature} \
      ~{true="--group" false="" group} \
      ~{true="--upgrade" false="" upgrade} \
      ~{true="--gff3_munge" false="" gff_three_munge} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--summary" false="" summary}
  >>>
  parameter_meta {
    of__database: "of --database."
    dsn: "<dsn>       Data source (default dbi:mysql:test)"
    adaptor: "Schema adaptor (default dbi::mysqlopt)"
    user: "<user>      Username for mysql authentication"
    pass: "<password>  Password for mysql authentication"
    fast_a: "<path>      Fasta file or directory containing fasta files for the DNA"
    create: "Force creation and initialization of database"
    max_feature: "Set the value of the maximum feature size (default 100 Mb; must be a power of 10)"
    group: "A list of one or more tag names (comma or space separated) to be used for grouping in the 9th column."
    upgrade: "Upgrade existing database to current schema"
    gff_three_munge: "Activate GFF3 name munging (see Bio::DB::GFF)"
    quiet: "No progress reports"
    summary: "Generate summary statistics for drawing coverage histograms. This can be run on a previously loaded database or during the load."
    notes: "If the filename is given as \"-\" then the input is taken from standard input. Compressed files (.gz, .Z, .bz2) are automatically uncompressed. FASTA format files are distinguished from GFF files by their filename extensions. Files ending in .fa, .fasta, .fast, .seq, .dna and their uppercase variants are treated as FASTA files. Everything else is treated as a GFF file. If you wish to load -fasta files from STDIN, then use the -f command-line swith with an argument of '-', as in gunzip my_data.fa.gz | bp_fast_load_gff.pl -d test -f - On the first load of a database, you will see a number of \"unknown table\" errors. This is normal. About maxfeature: the default value is 100,000,000 bases. If you have features that are close to or greater that 100Mb in length, then the value of maxfeature should be increased to 1,000,000,000, or another power of 10."
  }
}