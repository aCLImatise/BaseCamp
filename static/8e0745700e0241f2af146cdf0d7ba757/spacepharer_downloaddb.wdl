version 1.0

task SpacepharerDownloaddb {
  input {
    Int? reverse_set_db
    Int? threads
    Int? verbosity_level_errors
    String name
  }
  command <<<
    spacepharer downloaddb \
      ~{name} \
      ~{if defined(reverse_set_db) then ("--reverse-setdb " +  '"' + reverse_set_db + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spacepharer:4.228b9e5--h2d02072_0"
  }
  parameter_meta {
    reverse_set_db: "Create additional setDB with reversed fragments to compute under null [0,1] [1]"
    threads: "Number of CPU-cores used (all by default) [8]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    name: "Type"
  }
  output {
    File out_stdout = stdout()
  }
}