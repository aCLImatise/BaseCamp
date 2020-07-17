version 1.0

task Bpipe {
  input {
    String? auto_archive
    String? branch
    String? dir
    String? filename
    Boolean? resource
    String? interval
    String? memory
    String? threads
    Boolean? param
    String? source
    Boolean? test_mode
    String? until
    Boolean? verbose
    Boolean? yes
    String? run_vertical_line_test_vertical_line_debug_vertical_line_touch_vertical_line_execute
    String retry
    String? job
    String? id
    String? var_18
  }
  command <<<
    bpipe \
      ~{run_vertical_line_test_vertical_line_debug_vertical_line_touch_vertical_line_execute} \
      ~{retry} \
      ~{job} \
      ~{id} \
      ~{var_18} \
      ~{if defined(auto_archive) then ("--autoarchive " +  '"' + auto_archive + '"') else ""} \
      ~{if defined(branch) then ("--branch " +  '"' + branch + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{true="--resource" false="" resource} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--param" false="" param} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{true="--test" false="" test_mode} \
      ~{if defined(until) then ("--until " +  '"' + until + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--yes" false="" yes}
  >>>
  parameter_meta {
    auto_archive: "clean up all internal files after run into given archive"
    branch: "Comma separated list of branches to limit execution to"
    dir: "output directory"
    filename: "output file name of report"
    resource: "<resource=value>   place limit on named resource"
    interval: "the default genomic interval to execute pipeline for (samtools format)"
    memory: "maximum memory in MB, or specified as <n>GB or <n>MB"
    threads: "maximum threads"
    param: "<param=value>         defines a pipeline parameter, or file of paramaters via @<file>"
    source: "Load the given pipeline file(s) before running / executing"
    test_mode: "test mode"
    until: "run until stage given"
    verbose: "print internal logging to standard error"
    yes: "answer yes to any prompts or questions"
    run_vertical_line_test_vertical_line_debug_vertical_line_touch_vertical_line_execute: ""
    retry: ""
    job: ""
    id: ""
    var_18: ""
  }
}