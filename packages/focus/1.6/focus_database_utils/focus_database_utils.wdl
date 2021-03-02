version 1.0

task FocusDatabaseUtils {
  input {
    File? genomes
    Int? threads
    File? log
    Boolean? v
  }
  command <<<
    focus_database_utils \
      ~{if defined(genomes) then ("--genomes " +  '"' + genomes + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/focus:1.6--py_0"
  }
  parameter_meta {
    genomes: "Path to directory with FAST(A/Q) files"
    threads: "Number Threads used in the k-mer counting (Default: 4)"
    log: "Path to log file (Default: STDOUT)."
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}