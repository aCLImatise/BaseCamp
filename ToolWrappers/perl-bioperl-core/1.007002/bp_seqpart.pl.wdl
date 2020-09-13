version 1.0

task BpSeqpartpl {
  input {
    Int? files_create_partitioning
    String? help_message
    File? fasta_file_names
    String? files_defaults_fasta
    Directory? directory_where_dump
    Directory directory
    String for
    String help
    String of
    String all
    String files
    String the
    String where
    String fast_a
    String to
    String create
    String dump
    File file
    String names
    String through
    String var_output
    String split
    String sequence
  }
  command <<<
    bp_seqpart_pl \
      ~{directory} \
      ~{for} \
      ~{help} \
      ~{of} \
      ~{all} \
      ~{files} \
      ~{the} \
      ~{where} \
      ~{fast_a} \
      ~{to} \
      ~{create} \
      ~{dump} \
      ~{file} \
      ~{names} \
      ~{through} \
      ~{var_output} \
      ~{split} \
      ~{sequence} \
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
    directory: ""
    for: ""
    help: ""
    of: ""
    all: ""
    files: ""
    the: ""
    where: ""
    fast_a: ""
    to: ""
    create: ""
    dump: ""
    file: ""
    names: ""
    through: ""
    var_output: ""
    split: ""
    sequence: ""
  }
  output {
    File out_stdout = stdout()
    File out_fasta_file_names = "${in_fasta_file_names}"
  }
}