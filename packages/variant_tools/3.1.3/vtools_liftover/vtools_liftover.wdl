version 1.0

task VtoolsLiftover {
  input {
    Boolean? flip
    String? verbosity
    String build
  }
  command <<<
    vtools liftover \
      ~{build} \
      ~{if (flip) then "--flip" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    flip: "Flip primary and alternative reference genomes so that\\nthe specified build will become the primary reference\\ngenome of the project."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
    build: "Name of the alternative reference genome"
  }
  output {
    File out_stdout = stdout()
  }
}