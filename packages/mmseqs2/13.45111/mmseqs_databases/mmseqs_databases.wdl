version 1.0

task MmseqsDatabases {
  input {
    Boolean? force_reuse
    Boolean? remove_tmp_files
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
    String name
  }
  command <<<
    mmseqs databases \
      ~{name} \
      ~{if defined(force_reuse) then ("--force-reuse " +  '"' + force_reuse + '"') else ""} \
      ~{if defined(remove_tmp_files) then ("--remove-tmp-files " +  '"' + remove_tmp_files + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    force_reuse: "Reuse tmp filse in tmp/latest folder ignoring parameters and version changes [0]"
    remove_tmp_files: "Delete temporary files [0]"
    compressed: "Write compressed output [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    name: "Type            Taxonomy        Url                                                           "
  }
  output {
    File out_stdout = stdout()
  }
}