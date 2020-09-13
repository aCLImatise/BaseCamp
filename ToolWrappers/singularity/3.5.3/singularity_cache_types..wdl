version 1.0

task SingularityCacheTypes {
  input {
    String clean
    String list
  }
  command <<<
    singularity cache types_ \
      ~{clean} \
      ~{list}
  >>>
  parameter_meta {
    clean: "Clean your local Singularity cache"
    list: "List your local Singularity cache"
  }
  output {
    File out_stdout = stdout()
  }
}