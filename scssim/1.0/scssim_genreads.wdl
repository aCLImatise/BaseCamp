version 1.0

task ScssimGenreads {
  input {
    File? sequence_file_fasta
    Int? primers
    Float? gamma
    String? model
    String? layout
    Float? coverage
    Int? i_size
    Int? threads
    File? prefix_output_file
  }
  command <<<
    scssim genreads \
      ~{if defined(sequence_file_fasta) then ("--input " +  '"' + sequence_file_fasta + '"') else ""} \
      ~{if defined(primers) then ("--primers " +  '"' + primers + '"') else ""} \
      ~{if defined(gamma) then ("--gamma " +  '"' + gamma + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(layout) then ("--layout " +  '"' + layout + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(i_size) then ("--isize " +  '"' + i_size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(prefix_output_file) then ("--output " +  '"' + prefix_output_file + '"') else ""}
  >>>
  parameter_meta {
    sequence_file_fasta: "sequence file (.fasta) generated by simuVars program"
    primers: "the number of primers [Default:100000]"
    gamma: "a parameter controlling the number of primers used in each cycle [Default:1e-9]"
    model: "profile inferred from real sequencing data"
    layout: "read layout (SE for single end, PE for paired-end) [Default:PE]"
    coverage: "sequencing coverage [Default:5]"
    i_size: "mean insert size for paired-end sequencing [Default:260]"
    threads: "number of threads to use [Default:1]"
    prefix_output_file: "the prefix of output file"
  }
  output {
    File out_stdout = stdout()
    File out_prefix_output_file = "${in_prefix_output_file}"
  }
}