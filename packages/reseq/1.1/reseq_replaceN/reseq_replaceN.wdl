version 1.0

task ReseqReplaceN {
  input {
    Boolean? arg_number_threads
    Int? verbosity
    Boolean? arg_reference_sequences
    Boolean? arg_file_where
    String? seed
  }
  command <<<
    reseq replaceN \
      ~{if (arg_number_threads) then "-j" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (arg_reference_sequences) then "-r" else ""} \
      ~{if (arg_file_where) then "-R" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/reseq:1.1--py38h56fca86_0"
  }
  parameter_meta {
    arg_number_threads: "[ --threads ] arg (=0) Number of threads used (0=auto)"
    verbosity: "(=4)      Sets the level of verbosity (4=everything,\\n0=nothing)"
    arg_reference_sequences: "[ --refIn ] arg        Reference sequences in fasta format (gz and bz2\\nsupported)"
    arg_file_where: "[ --refSim ] arg       File to where reference sequences in fasta format\\nwith N's randomly replace should be written to"
    seed: "Seed used for replacing N, if none is given random\\nseed will be used\\n"
  }
  output {
    File out_stdout = stdout()
  }
}