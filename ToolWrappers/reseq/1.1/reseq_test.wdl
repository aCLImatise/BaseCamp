version 1.0

task ReseqTest {
  input {
    Boolean? arg_number_threads
    Int? verbosity
  }
  command <<<
    reseq test \
      ~{if (arg_number_threads) then "-j" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/reseq:1.1--py38h56fca86_0"
  }
  parameter_meta {
    arg_number_threads: "[ --threads ] arg (=0) Number of threads used (0=auto)"
    verbosity: "(=4)      Sets the level of verbosity (4=everything,\\n0=nothing)"
  }
  output {
    File out_stdout = stdout()
  }
}