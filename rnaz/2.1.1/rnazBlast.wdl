version 1.0

task RnazBlast.pl {
  input {
    String? blast_dir
    String? database
    String? seq_dir
    String? e_value
    Boolean? man
    File? file
  }
  command <<<
    rnazBlast.pl \
      ~{file} \
      ~{if defined(blast_dir) then ("--blast-dir " +  '"' + blast_dir + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(seq_dir) then ("--seq-dir " +  '"' + seq_dir + '"') else ""} \
      ~{if defined(e_value) then ("--e-value " +  '"' + e_value + '"') else ""} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    blast_dir: "The directory with your BLAST database. If not set, the value from the \"BLASTDB\" environment variable is used."
    database: "Name of the BLAST database to compare with. Must exist in the directory set with \"--blast-dir\" or in the directory set by \"BLASTDB\"."
    seq_dir: "Directory with sequence files. For each sequence identifier in your input file you need to have a corresponding FASTA formatted file. The files should be named with the sequence identifier and the extension \".fa\" or \".fasta\". If your identifier in your input file is for example \"contig100\" then you should have a file named \"contig100.fa\". (If your identifier is of the form ``assembly.chromosome\" as for example used by UCSC alignments, it is also possible to name the file \"chr22.fa\" for a sequence identifier \"hg17.chr22\")."
    e_value: "E-value cutoff. All hits with E < X are reported. (Default: 1e-06)"
    man: "Prints the manual page and exits."
    file: ""
  }
}