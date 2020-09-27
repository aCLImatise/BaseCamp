version 1.0

task RnazBlastpl {
  input {
    Directory? blast_dir
    Directory? database
    File? seq_dir
    Float? e_value
    Boolean? man
  }
  command <<<
    rnazBlast_pl \
      ~{if defined(blast_dir) then ("--blast-dir " +  '"' + blast_dir + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(seq_dir) then ("--seq-dir " +  '"' + seq_dir + '"') else ""} \
      ~{if defined(e_value) then ("--e-value " +  '"' + e_value + '"') else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    blast_dir: "The directory with your BLAST database. If not set, the value\\nfrom the \\\"BLASTDB\\\" environment variable is used."
    database: "Name of the BLAST database to compare with. Must exist in the\\ndirectory set with \\\"--blast-dir\\\" or in the directory set by\\n\\\"BLASTDB\\\"."
    seq_dir: "Directory with sequence files. For each sequence identifier in\\nyour input file you need to have a corresponding FASTA formatted\\nfile. The files should be named with the sequence identifier and\\nthe extension \\\".fa\\\" or \\\".fasta\\\". If your identifier in your\\ninput file is for example \\\"contig100\\\" then you should have a\\nfile named \\\"contig100.fa\\\". (If your identifier is of the form\\n``assembly.chromosome\\\" as for example used by UCSC alignments,\\nit is also possible to name the file \\\"chr22.fa\\\" for a sequence\\nidentifier \\\"hg17.chr22\\\")."
    e_value: "E-value cutoff. All hits with E < X are reported. (Default:\\n1e-06)"
    man: "Prints the manual page and exits."
  }
  output {
    File out_stdout = stdout()
  }
}