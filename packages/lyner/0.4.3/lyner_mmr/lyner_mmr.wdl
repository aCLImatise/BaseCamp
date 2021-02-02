version 1.0

task LynerMmr {
  input {
    Int? order
  }
  command <<<
    lyner mmr \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""}
  >>>
  parameter_meta {
    order: "--help               Show this message and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}