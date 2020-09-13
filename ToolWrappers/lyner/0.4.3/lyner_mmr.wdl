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
    order: ""
  }
  output {
    File out_stdout = stdout()
  }
}