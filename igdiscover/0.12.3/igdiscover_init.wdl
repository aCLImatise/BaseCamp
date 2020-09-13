version 1.0

task IgdiscoverInit {
  input {
    File? database
    File? single_reads
    Int? reads_one
  }
  command <<<
    igdiscover init \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(single_reads) then ("--single-reads " +  '"' + single_reads + '"') else ""} \
      ~{if defined(reads_one) then ("--reads1 " +  '"' + reads_one + '"') else ""}
  >>>
  parameter_meta {
    database: "Directory with V.fasta, D.fasta and J.fasta files. If\\nnot given, a dialog is shown."
    single_reads: "File with single-end reads (.fasta.gz or .fastq.gz)"
    reads_one: "First paired-end read file. The second is found\\nautomatically. Must be a .fastq.gz file. If not given,\\na dialog is shown.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}