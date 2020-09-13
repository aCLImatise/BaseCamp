version 1.0

task Bpipe {
  input {
    String? auto_archive
    String? branch
    Directory? dir
    File? filename
    Boolean? resource
    String? interval
    String? memory
    String? threads
    Boolean? param
    File? source
    Boolean? test
    String? until
    Boolean? verbose
    Boolean? yes
  }
  command <<<
    bpipe \
      ~{if defined(auto_archive) then ("--autoarchive " +  '"' + auto_archive + '"') else ""} \
      ~{if defined(branch) then ("--branch " +  '"' + branch + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{if (resource) then "--resource" else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (param) then "--param" else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if defined(until) then ("--until " +  '"' + until + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (yes) then "--yes" else ""}
  >>>
  parameter_meta {
    auto_archive: "clean up all internal files after run\\ninto given archive"
    branch: "Comma separated list of branches to\\nlimit execution to"
    dir: "output directory"
    filename: "output file name of report"
    resource: "<resource=value>   place limit on named resource"
    interval: "the default genomic interval to execute\\npipeline for (samtools format)"
    memory: "maximum memory in MB, or specified as\\n<n>GB or <n>MB"
    threads: "maximum threads"
    param: "<param=value>         defines a pipeline parameter, or file of\\nparamaters via @<file>"
    source: "Load the given pipeline file(s) before\\nrunning / executing"
    test: "test mode"
    until: "run until stage given"
    verbose: "print internal logging to standard error"
    yes: "answer yes to any prompts or questions"
  }
  output {
    File out_stdout = stdout()
    Directory out_dir = "${in_dir}"
    File out_filename = "${in_filename}"
  }
}