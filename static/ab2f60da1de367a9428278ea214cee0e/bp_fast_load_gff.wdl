version 1.0

task BpFastLoadGff.pl {
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
    bp_fast_load_gff.pl \
      ~{notes} \
      ~{if defined(of__database) then ("-d " +  '"' + of__database + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{true="--create" false="" create} \
      ~{true="--local" false="" local} \
      ~{true="--user" false="" user} \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--password" false="" password} \
      ~{true="--long_list" false="" long_list} \
      ~{true="--maxfeature" false="" max_feature} \
      ~{true="--group" false="" group} \
      ~{true="--gff3_munge" false="" gff_three_munge} \
      ~{true="--summary" false="" summary} \
      ~{true="--Temporary" false="" temporary}
  >>>
  parameter_meta {
    of__database: "of --database."
    database: "Mysql database name"
    create: "Reinitialize/create data tables without asking"
    local: "Try to load a remote database using local data."
    user: "Username to log in as"
    fast_a: "File or directory containing fasta files to load"
    password: "Password to use for authentication"
    long_list: "Directory containing a very large number of GFF and/or FASTA files"
    max_feature: "Set the value of the maximum feature size (default 100Mb; must be a power of 10)"
    group: "A list of one or more tag names (comma or space separated) to be used for grouping in the 9th column."
    gff_three_munge: "Activate GFF3 name munging (see Bio::DB::GFF)"
    summary: "Generate summary statistics for drawing coverage histograms. This can be run on a previously loaded database or during the load."
    temporary: "Location of a writable scratch directory"
    notes: "If the filename is given as \"-\" then the input is taken from standard input. Compressed files (.gz, .Z, .bz2) are automatically uncompressed. FASTA format files are distinguished from GFF files by their filename extensions. Files ending in .fa, .fasta, .fast, .seq, .dna and their uppercase variants are treated as FASTA files. Everything else is treated as a GFF file. If you wish to load -fasta files from STDIN, then use the -f command-line swith with an argument of '-', as in gunzip my_data.fa.gz | bp_fast_load_gff.pl -d test -f - The nature of the load requires that the database be on the local machine and that the indicated user have the \"file\" privilege to load the tables and have enough room in /usr/tmp (or whatever is specified by the \$TMPDIR environment variable), to hold the tables transiently. If your MySQL is version 3.22.6 and was compiled using the \"load local file\" option, then you may be able to load remote databases with local data using the --local option. About maxfeature: the default value is 100,000,000 bases. If you have features that are close to or greater that 100Mb in length, then the value of maxfeature should be increased to 1,000,000,000. This value must be a power of 10. If the list of GFF or fasta files exceeds the kernel limit for the maximum number of command-line arguments, use the --long_list /path/to/files option. The adaptor used is dbi::mysqlopt. There is currently no way to change this."
  }
}