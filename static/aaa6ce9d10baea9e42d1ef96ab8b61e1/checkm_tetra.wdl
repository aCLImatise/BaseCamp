version 1.0

task CheckmTetra {
  input {
    String? threads
    Boolean? quiet
  }
  command <<<
    checkm tetra \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    threads: "number of threads (default: 1)"
    quiet: "suppress console output"
  }
}