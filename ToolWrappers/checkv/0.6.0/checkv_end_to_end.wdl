version 1.0

task CheckvEndToEnd {
  input {
    File? reference_database_path
    Int? number_threads_use
    Boolean? restart
    Boolean? quiet
    String input_nucleotide_sequences
    String output_directory
  }
  command <<<
    checkv end_to_end \
      ~{input_nucleotide_sequences} \
      ~{output_directory} \
      ~{if defined(reference_database_path) then ("-d " +  '"' + reference_database_path + '"') else ""} \
      ~{if defined(number_threads_use) then ("-t " +  '"' + number_threads_use + '"') else ""} \
      ~{if (restart) then "--restart" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_database_path: "Reference database path. By default the CHECKVDB environment\\nvariable is used"
    number_threads_use: "Number of threads to use for Prodigal and DIAMOND"
    restart: "Overwrite existing intermediate files. By default CheckV\\ncontinues where program left off"
    quiet: "Suppress logging messages"
    input_nucleotide_sequences: "Input nucleotide sequences in FASTA format"
    output_directory: "Output directory"
  }
  output {
    File out_stdout = stdout()
  }
}