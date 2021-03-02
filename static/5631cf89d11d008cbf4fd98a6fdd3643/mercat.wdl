version 1.0

task Mercat {
  input {
    File? pathtoinputfile
    File? pathtofoldercontaininginputfiles
    Int? kmer_length
    String? no_of_cores
    Int? minimum_kmer_count
    Boolean? pro
    Boolean? fastq_input_file
    Boolean? run_prodigal_fasta
    Boolean? _trimmomatic_options
    Boolean? split_mb_files
    String? var_10
  }
  command <<<
    mercat \
      ~{var_10} \
      ~{if defined(pathtoinputfile) then ("-i " +  '"' + pathtoinputfile + '"') else ""} \
      ~{if defined(pathtofoldercontaininginputfiles) then ("-f " +  '"' + pathtofoldercontaininginputfiles + '"') else ""} \
      ~{if defined(kmer_length) then ("-k " +  '"' + kmer_length + '"') else ""} \
      ~{if defined(no_of_cores) then ("-n " +  '"' + no_of_cores + '"') else ""} \
      ~{if defined(minimum_kmer_count) then ("-c " +  '"' + minimum_kmer_count + '"') else ""} \
      ~{if (pro) then "-pro" else ""} \
      ~{if (fastq_input_file) then "-q" else ""} \
      ~{if (run_prodigal_fasta) then "-p" else ""} \
      ~{if (_trimmomatic_options) then "-t" else ""} \
      ~{if (split_mb_files) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pathtoinputfile: "path-to-input-file"
    pathtofoldercontaininginputfiles: "path-to-folder-containing-input-files"
    kmer_length: "kmer length"
    no_of_cores: "no of cores [default = all]"
    minimum_kmer_count: "minimum kmer count [default = 10]"
    pro: "protein input file"
    fastq_input_file: "fastQ input file"
    run_prodigal_fasta: "run prodigal on fasta file"
    _trimmomatic_options: "[T]      Trimmomatic options"
    split_mb_files: "[S]      Split into x MB files. Default = 100MB"
    var_10: ""
  }
  output {
    File out_stdout = stdout()
  }
}