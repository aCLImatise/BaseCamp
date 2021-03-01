version 1.0

task VsnpFilterFinderpy {
  input {
    Directory? cwd
    File? filters
    Directory? group
    Boolean? debug
    String prog
  }
  command <<<
    vsnp_filter_finder_py \
      ~{prog} \
      ~{if defined(cwd) then ("--cwd " +  '"' + cwd + '"') else ""} \
      ~{if defined(filters) then ("--filters " +  '"' + filters + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cwd: "Working directoy to be added as path to dependency\\nfiles."
    filters: "Defining SNPs/Filter file"
    group: "Group/directory name"
    debug: "turn off map.pooling of samples"
    prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}