version 1.0

task BpSeqpart.pl {
  input {
    String? files_create_partitioning
    String? help_message
    String? fasta_file_names
    String? files_defaults_fasta
    String? directory_where_dump
  }
  command <<<
    bp_seqpart.pl \
      ~{if defined(files_create_partitioning) then ("-n " +  '"' + files_create_partitioning + '"') else ""} \
      ~{if defined(help_message) then ("-h " +  '"' + help_message + '"') else ""} \
      ~{if defined(fasta_file_names) then ("-p " +  '"' + fasta_file_names + '"') else ""} \
      ~{if defined(files_defaults_fasta) then ("-f " +  '"' + files_defaults_fasta + '"') else ""} \
      ~{if defined(directory_where_dump) then ("-o " +  '"' + directory_where_dump + '"') else ""}
  >>>
  parameter_meta {
    files_create_partitioning: "of files to create through partitioning"
    help_message: "help message"
    fasta_file_names: "for all FASTA file names output, files are of the form <outdir>/<prefix>#.<format>"
    files_defaults_fasta: "of the files, defaults to FASTA but you can specify anything supported by SeqIO from BioPerl"
    directory_where_dump: "directory where to dump the split sequence files"
  }
}