version 1.0

task AmrfinderUpdate {
  input {
    Directory? database
    Boolean? force_update
    Boolean? quiet
    Int? threads
    Boolean? debug
    File? log
  }
  command <<<
    amrfinder_update \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if (force_update) then "--force_update" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ncbi-amrfinderplus:3.9.8--h671e170_0"
  }
  parameter_meta {
    database: "Directory for all versions of AMRFinder databases\\nDefault: /usr/local/bin/data"
    force_update: "Force updating the AMRFinder database"
    quiet: "Suppress messages to STDERR"
    threads: "Max. number of threads\\nDefault: 1"
    debug: "Integrity checks"
    log: "Error log file, appended, opened on application start"
  }
  output {
    File out_stdout = stdout()
  }
}