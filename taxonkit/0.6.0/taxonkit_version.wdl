version 1.0

task TaxonkitVersion {
  input {
    Boolean? check_update
    String? data_dir
    Boolean? line_buffered
    String? out_file
    Int? threads
    Boolean? verbose
    String? flags
  }
  command <<<
    taxonkit version \
      ~{flags} \
      ~{true="--check-update" false="" check_update} \
      ~{if defined(data_dir) then ("--data-dir " +  '"' + data_dir + '"') else ""} \
      ~{true="--line-buffered" false="" line_buffered} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    check_update: "check update"
    data_dir: "directory containing nodes.dmp and names.dmp (default \"/home/ubuntu/.taxonkit\")"
    line_buffered: "use line buffering on output, i.e., immediately writing to stdin/file for every line of output"
    out_file: "out file (\"-\" for stdout, suffix .gz for gzipped out) (default \"-\")"
    threads: "number of CPUs. 2 is enough (default value: 1 for single-CPU PC, 2 for others) (default 2)"
    verbose: "print verbose information"
    flags: ""
  }
}