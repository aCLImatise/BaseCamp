version 1.0

task CheckmTetra {
  input {
    Int? threads
    Boolean? quiet
  }
  command <<<
    checkm tetra \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    threads: "number of threads (default: 1)"
    quiet: "suppress console output"
  }
  output {
    File out_stdout = stdout()
  }
}