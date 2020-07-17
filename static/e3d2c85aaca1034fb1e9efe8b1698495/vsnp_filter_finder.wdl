version 1.0

task VsnpFilterFinder.py {
  input {
    String? cwd
    String? filters
    String? group
    Boolean? debug
    String prog
  }
  command <<<
    vsnp_filter_finder.py \
      ~{prog} \
      ~{if defined(cwd) then ("--cwd " +  '"' + cwd + '"') else ""} \
      ~{if defined(filters) then ("--filters " +  '"' + filters + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    cwd: "Working directoy to be added as path to dependency files."
    filters: "Defining SNPs/Filter file"
    group: "Group/directory name"
    debug: "turn off map.pooling of samples"
    prog: ""
  }
}