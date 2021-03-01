version 1.0

task KneaddataBowtie2DiscordantPairs {
  input {
    Int? one
    Int? two
    File? database_index_file
    String? un_pair
    String? al_pair
    String? un_single
    String? al_single
    String? fastq_files_orphan
    File? file_write_output
    Int? bowtie_two
    Int? threads
    Int? bowtie_two_options
    Boolean? cat_pairs
    Boolean? reorder
  }
  command <<<
    kneaddata_bowtie2_discordant_pairs \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(database_index_file) then ("-x " +  '"' + database_index_file + '"') else ""} \
      ~{if defined(un_pair) then ("--un-pair " +  '"' + un_pair + '"') else ""} \
      ~{if defined(al_pair) then ("--al-pair " +  '"' + al_pair + '"') else ""} \
      ~{if defined(un_single) then ("--un-single " +  '"' + un_single + '"') else ""} \
      ~{if defined(al_single) then ("--al-single " +  '"' + al_single + '"') else ""} \
      ~{if defined(fastq_files_orphan) then ("-U " +  '"' + fastq_files_orphan + '"') else ""} \
      ~{if defined(file_write_output) then ("-S " +  '"' + file_write_output + '"') else ""} \
      ~{if defined(bowtie_two) then ("--bowtie2 " +  '"' + bowtie_two + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(bowtie_two_options) then ("--bowtie2-options " +  '"' + bowtie_two_options + '"') else ""} \
      ~{if (cat_pairs) then "--cat-pairs" else ""} \
      ~{if (reorder) then "--reorder" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    one: "the fastq file of pair1 reads"
    two: "the fastq file of pair2 reads"
    database_index_file: "the database index file"
    un_pair: "the name of the output files for the paired reads without any alignments"
    al_pair: "the name of the output files for the paired reads with concordant alignments"
    un_single: "the name of the output files for the orphan reads without alignments"
    al_single: "the name of the output files for the orphan reads with alignments"
    fastq_files_orphan: "the fastq files of orphan reads in comma-delimited list"
    file_write_output: "the file to write the sam output"
    bowtie_two: "the path to the bowtie2 executable"
    threads: "the number of threads to use"
    bowtie_two_options: "the bowtie2 options to apply"
    cat_pairs: "concatenate pair files before aligning so reads are aligned as single end"
    reorder: "print the sequences in the same order as the input files"
  }
  output {
    File out_stdout = stdout()
    File out_file_write_output = "${in_file_write_output}"
  }
}